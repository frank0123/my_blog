class PostMailer < ActionMailer::Base
  domain = ENV['DOMAIN_NAME'] || 'example.com'

  default from: "no-reply@#{domain}"

  def new(post_id, to)
    @post = Post.find(post_id)
    mail to: to, subject: '哟，骚年, 要弄新博客啦？'
  end
end
