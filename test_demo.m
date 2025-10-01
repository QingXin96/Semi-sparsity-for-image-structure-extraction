clc
% clear
% close all

u_i = im2double(imread('./boy.jpg')); % input image

lambda              = 0.005; % boy.jpg
alpha               = 0.006;
beta                = 0.001;

% lambda              = 0.004; % zeugma.png
% alpha               = 0.007;
% beta                = 0.002;

% maximum number of iterations, and it may take minutes for a large number of iterations. 
iters               = 1500;
normalization       = 0;
u              = admm_solver(u_i, lambda, alpha, beta, iters, normalization);
figure, 
subplot(121), imshow(u_i),title('input image')
subplot(122), imshow(u),title('image structure')

