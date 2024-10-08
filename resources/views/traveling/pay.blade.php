@extends('layouts.app')

@section('content')

    <div class="page-heading">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2>Pay With Paypal</h2>
                </div>
            </div>
        </div>
    </div>

    {{-- <div class="container">
        <div><h2><b>Total price : {{$totalPrice}}</b></h2></div>
        <!-- Replace "test" with your own sandbox Business account app client ID -->
        <script src="https://www.paypal.com/sdk/js?client-id=AXbnJoF5uqBYdo-olgn770oz6kjQkF-xmgOEKB6AtfOxgaWjzOBFfr7kLjdtS_-d-H59mUsFY31eNavJ&currency=USD"></script>
        <!-- Set up a container element for the button -->
        <div id="paypal-button-container"></div>
        <script>
            paypal.Buttons({
            // Sets up the transaction when a payment button is clicked
            createOrder: (data, actions) => {
                return actions.order.create({
                purchase_units: [{
                    amount: {
                    value: '{{ Session::get('price') }}' // Can also reference a variable or function
                    }
                }]
                });
            },
            // Finalize the transaction after payer approval
            onApprove: (data, actions) => {
                return actions.order.capture().then(function(orderData) {
                    window.location.href='http://127.0.0.1:8000/traveling/success';
                });
            }
            }).render('#paypal-button-container');
        </script>
    </div> --}}

    <div class="container paypal">
        <div>
            <h2><b>Total price : {{$totalPrice}}</b></h2>
            <!-- Replace "test" with your own sandbox Business account app client ID -->
            <script src="https://www.paypal.com/sdk/js?client-id=AXbnJoF5uqBYdo-olgn770oz6kjQkF-xmgOEKB6AtfOxgaWjzOBFfr7kLjdtS_-d-H59mUsFY31eNavJ&currency=USD"></script>
            <!-- Set up a container element for the button -->
            <div id="paypal-button-container"></div>
            <script>
                paypal.Buttons({
                // Sets up the transaction when a payment button is clicked
                createOrder: (data, actions) => {
                    return actions.order.create({
                    purchase_units: [{
                        amount: {
                        value: '{{ Session::get('price') }}' // Can also reference a variable or function
                        }
                    }]
                    });
                },
                // Finalize the transaction after payer approval
                onApprove: (data, actions) => {
                    return actions.order.capture().then(function(orderData) {
                        window.location.href='http://127.0.0.1:8000/traveling/success';
                    });
                }
                }).render('#paypal-button-container');
            </script>
        </div>
    </div>

@endsection