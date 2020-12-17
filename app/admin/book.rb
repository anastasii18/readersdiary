ActiveAdmin.register Book do
  permit_params :title, :comments, :rating, :start, :finish
end