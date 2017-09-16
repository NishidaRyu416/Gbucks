module RatyHelper
  def raty_stars(n, max=5)
    (
        image_tag('/assets/star-on.png', alt: '') * n +
        image_tag('/assets/star-off.png', alt: '') * (max-n)
    ).html_safe
  end
end