({
    openConfirm: function(cmp, event) {
        this.LightningConfirm.open({
            message: 'this is the confirm message',
            theme: 'warning',
            label: 'Please Confirm',
        }).then(function(result) {
            // result is true if clicked "OK"
            // result is false if clicked "Cancel"
            console.log('confirm result is', result);
        });
    }
});