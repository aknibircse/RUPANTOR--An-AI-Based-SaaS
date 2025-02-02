#!/bin/bash

# Create Build Args String For Docker Build Command
BUILD_ARGS=""

# List Of Environment Variables
ENV_VARS=(
  "NEXT_PUBLIC_CLERK_SIGN_IN_URL"
  "NEXT_PUBLIC_CLERK_SIGN_UP_URL"
  "NEXT_PUBLIC_CLERK_AFTER_SIGN_IN_URL"
  "NEXT_PUBLIC_CLERK_AFTER_SIGN_UP_URL"
  "MONGODB_URL"
  "NEXT_PUBLIC_CLERK_PUBLISHABLE_KEY"
  "CLERK_SECRET_KEY"
  "WEBHOOK_SECRET"
  "NEXT_PUBLIC_CLOUDINARY_CLOUD_NAME"
  "NEXT_PUBLIC_CLOUDINARY_API_KEY"
  "NEXT_PUBLIC_CLOUDINARY_API_SECRET"
  "NEXT_PUBLIC_CLOUDINARY_UPLOAD_PRESET"
  "NEXT_PUBLIC_CLOUDINARY_BUCKET_NAME"
  "NEXT_PUBLIC_STRIPE_WEBHOOK_CHECKOUT_URL"
  "NEXT_PUBLIC_STRIPE_SECRET_KEY"
  "NEXT_PUBLIC_STRIPE_WEBHOOK_SECRET"
  "NEXT_PUBLIC_STRIPE_PUBLISHABLE_KEY"
)

# Add Build Args For Each Environment Variables
for var in "${ENV_VARS[@]}"; do
  BUILD_ARGS="$BUILD_ARGS --build-arg $var=\${$var}"
done

# Return The Build Args String
echo "$BUILD_ARGS"
