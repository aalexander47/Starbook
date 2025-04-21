from django.shortcuts import render

def landing_page(request):
    context = {
        'grid_items': range(1, 10),  # Pass a range of numbers to the template
    }
    return render(request, 'landing/index.html', context)
