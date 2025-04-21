document.addEventListener('DOMContentLoaded', function () {
    const timelineItems = document.querySelectorAll('.timeline-item');

    function updateTimelineItems() {
        timelineItems.forEach((item) => {
            item.classList.remove('active'); // Ensure no active class is applied
        });
    }

    window.addEventListener('scroll', updateTimelineItems);
});
