const selectedFiles = [];
let rating = 0;
let PID = 0;
let OID = 0;
<<<<<<< HEAD
=======
const productReviewImg = document.querySelector(".productReviewImg");
const productName = document.querySelector(".productName");
const productDesp = document.querySelector(".productDesp");
const singleProdLink = document.querySelector(".singleProdLink");
const reviewForm = document.getElementById('reviewForm');
const formData = new FormData(reviewForm); // Initialize FormData

>>>>>>> ec86fbf52e8728a26c96c2f6c4c10dc28c3b17d3

document.addEventListener('DOMContentLoaded', () => {
    const urlParams = new URLSearchParams(window.location.search);
    const productId = urlParams.get('pid');
    const orderId = urlParams.get('oid');
    OID = Number(orderId);

    if (productId) {
        displayProductDetails(productId);
    } else {
        console.error('No product ID found in the URL.');
    }
});

const fetchProductById = async (productId) => {
    try {
        const response = await fetch(`http://localhost:3000/products/${productId}`);
<<<<<<< HEAD
        if (!response.ok) throw new Error('Network response was not ok');
=======
        if (!response.ok) {
            throw new Error('Network response was not ok');
        }
>>>>>>> ec86fbf52e8728a26c96c2f6c4c10dc28c3b17d3
        return await response.json();
    } catch (error) {
        console.error('Failed to fetch product:', error);
        return null;
    }
};

const displayProductDetails = async (productId) => {
    const product = await fetchProductById(productId);
    if (!product) {
        console.error('Product not found');
        return false;
    }
<<<<<<< HEAD

    const {
        product_description: description,
        product_id: id,
        product_image: image,
        product_name: name,
    } = product;

    document.querySelector(".productReviewImg").src = image[1] || image[0];
    document.querySelector(".productDesp").textContent = description;
    document.querySelector(".productName").textContent = name;
    document.querySelector(".singleProdLink").href = `singleProductPage.html?id=${id}`;
=======
    console.log(product);

    const { product_brand: brand, category_name: category, product_description: description, product_id: id, product_image: image, product_name: name, product_mrp: price, no_of_items: stock, product_discount: discount, tax } = product;
    productReviewImg.src = image[1] || image[0];
    productDesp.textContent = description;
    productName.textContent = name;
    singleProdLink.href = `singleProductPage.html?id=${id}`;
>>>>>>> ec86fbf52e8728a26c96c2f6c4c10dc28c3b17d3
    PID = id;
};

document.querySelector('.custom-file-upload').addEventListener('click', () => {
    document.getElementById('media').click();
});

document.getElementById('media').addEventListener('change', (event) => {
    const files = Array.from(event.target.files);
    const imgContainer = document.querySelector('.imgContainer');

<<<<<<< HEAD
    files.forEach((file) => {
        selectedFiles.push(file);

        const reader = new FileReader();
=======
    files.forEach((file, index) => {
        selectedFiles.push(file);
        const reader = new FileReader();

>>>>>>> ec86fbf52e8728a26c96c2f6c4c10dc28c3b17d3
        reader.onload = (e) => {
            const imgWrapper = document.createElement('div');
            imgWrapper.className = 'imgWrapper';

            const img = document.createElement('img');
            img.src = e.target.result;

            const removeBtn = document.createElement('button');
            removeBtn.innerHTML = 'X';
            removeBtn.className = 'remove-btn';
            removeBtn.onclick = () => {
                imgWrapper.remove();
<<<<<<< HEAD
                const fileIndex = selectedFiles.indexOf(file);
                if (fileIndex > -1) selectedFiles.splice(fileIndex, 1);
=======
                selectedFiles.splice(index, 1);
                
>>>>>>> ec86fbf52e8728a26c96c2f6c4c10dc28c3b17d3
            };

            imgWrapper.appendChild(img);
            imgWrapper.appendChild(removeBtn);
            imgContainer.appendChild(imgWrapper);
        };

        reader.readAsDataURL(file);
    });
});

<<<<<<< HEAD
document.getElementById('reviewForm').addEventListener('submit', async (evt) => {
=======



reviewForm.addEventListener('submit', async (evt) => {
>>>>>>> ec86fbf52e8728a26c96c2f6c4c10dc28c3b17d3
    evt.preventDefault();

    const reviewText = document.getElementById('review').value;
    const reviewHeadline = document.getElementById('headline').value;
<<<<<<< HEAD
    const wordCount = reviewText.split(/\s+/).length;

    if (wordCount < 1) {
=======
    
    const wordCount = reviewText.split(/\s+/).length;
    
    if (wordCount < 20) {
>>>>>>> ec86fbf52e8728a26c96c2f6c4c10dc28c3b17d3
        document.getElementById('wordCountMessage').style.display = 'block';
        return;
    } else {
        document.getElementById('wordCountMessage').style.display = 'none';
    }

<<<<<<< HEAD
    const formData = new FormData();
    formData.append("headline", reviewHeadline);
    formData.append("review", reviewText);
    formData.append("rating", rating);

    const userEmail = sessionStorage.getItem('userEmail');
    if (!userEmail) {
=======
    formData.delete("headline");
    formData.delete("review");
    formData.append("headline", reviewHeadline);
    formData.append('review', reviewText);
    formData.append('rating', rating);
    console.log(reviewText, reviewHeadline);
   
    
    const userEmail = sessionStorage.getItem('userEmail');
    const product_id = PID;

    if (userEmail) {
        formData.append('userEmail', userEmail);
        formData.append('product_id', product_id);
        formData.append('order_id', OID);

        // Remove existing 'media' entries in formData
        formData.delete('media');

        // Append selectedFiles to formData under 'media' key
        selectedFiles.forEach((file, index) => {
            formData.append(`media`, file);
        });

        console.log(formData);
    } else {
>>>>>>> ec86fbf52e8728a26c96c2f6c4c10dc28c3b17d3
        console.error('No userEmail found in session storage');
        return;
    }

<<<<<<< HEAD
    formData.append('userEmail', userEmail);
    formData.append('product_id', PID);
    formData.append('order_id', OID);

    selectedFiles.forEach((file) => {
        formData.append('media', file);
    });

=======
>>>>>>> ec86fbf52e8728a26c96c2f6c4c10dc28c3b17d3
    try {
        const response = await fetch('http://localhost:3000/uploadReview', {
            method: 'POST',
            body: formData,
        });

<<<<<<< HEAD
        if (!response.ok) throw new Error('Failed to upload review');
=======
        if (!response.ok) {
            throw new Error('Failed to upload review');
        }
>>>>>>> ec86fbf52e8728a26c96c2f6c4c10dc28c3b17d3

        const result = await response.json();
        alert('Review uploaded successfully');
        window.location.href = "orders.html";
    } catch (error) {
        console.error('Error uploading review:', error);
    }
});

<<<<<<< HEAD
=======

>>>>>>> ec86fbf52e8728a26c96c2f6c4c10dc28c3b17d3
function rate(value) {
    rating = value;
    const stars = document.querySelectorAll(".rating-group .star");
    stars.forEach((star) => {
        const starValue = parseInt(star.getAttribute("data-value"));
        if (starValue <= rating) {
            star.innerHTML = '<i class="fa-solid fa-star" style="color:#ffa500"></i>';
        } else {
            star.innerHTML = '<i class="fa-regular fa-star"></i>';
        }
    });
}

<<<<<<< HEAD
function clearRating() {
    rating = 0;
    document.querySelectorAll(".rating-group .star").forEach((star) => {
=======
// Function to clear ratings
function clearRating() {
    rating = 0;
    const stars = document.querySelectorAll(".rating-group .star");
    stars.forEach((star) => {
>>>>>>> ec86fbf52e8728a26c96c2f6c4c10dc28c3b17d3
        star.innerHTML = '<i class="fa-regular fa-star"></i>';
    });
}

<<<<<<< HEAD
document.querySelectorAll(".rating-group .star").forEach((star) => {
    star.addEventListener("click", () => {
        rate(parseInt(star.getAttribute("data-value")));
    });
});

document.getElementById("clearButton").addEventListener("click", clearRating);
=======
// Add event listener for each star
const stars = document.querySelectorAll(".rating-group .star");
stars.forEach((star) => {
    star.addEventListener("click", function() {
        const value = parseInt(star.getAttribute("data-value"));
        rate(value);
    });
});

// Add event listener for clear button
const clearButton = document.getElementById("clearButton");
clearButton.addEventListener("click", clearRating);
>>>>>>> ec86fbf52e8728a26c96c2f6c4c10dc28c3b17d3
