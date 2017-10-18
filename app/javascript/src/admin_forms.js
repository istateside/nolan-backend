import $ from 'jquery';

export default class AdminForms {
  constructor() {
    this.bindPositionControls();
    this.moveSlide = this.moveSlide.bind(this);
  }

  bindPositionControls() {
    $(document).on('click', '.js-position-down', this.moveHigher.bind(this));
    $(document).on('click', '.js-position-up', this.moveLower.bind(this))

    $('.delete-slide').on('click', function(event) {
      if (!confirm("Are you sure?")) {
        event.preventDefault();
        return false;
      }
    });
  }

  moveHigher(e) {
    e.preventDefault();
    const $clickedSlide = $(e.currentTarget).closest('.js-item');
    this.moveSlide($clickedSlide, 'before')
  }

  moveLower(e) {
    e.preventDefault();
    const $clickedSlide = $(e.currentTarget).closest('.js-item');
    this.moveSlide($clickedSlide, 'after')
  }

  moveSlide($slide, dir = 'before') {
    const positionInput = $slide.find('input.position-input'); 
    const currPosition = +positionInput.val();

    const $list = $slide.closest('.js-list');
    const $previous = $slide.prev('.js-item');
    const $next = $slide.next('.js-item');

    if (dir === 'before' && $previous.length) {
      $slide.detach().insertBefore($previous);
    } else if (dir === 'after' && $next.length) {
      $slide.detach().insertAfter($next);
    }

    this.updateSlides($list);
  }

  updateSlides($list) {
    $list.find('.js-item').each((idx, element) => {
      $(element).find('.js-position-label').text(idx + 1);
      const $input = $(element).find('input.position-input');
      $input.val(idx + 1);
    });
  }
}
