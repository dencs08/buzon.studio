<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Mail\Mailables\Content;
use Illuminate\Mail\Mailables\Envelope;
use Illuminate\Queue\SerializesModels;

class EmailFormUserSent extends Mailable
{
    use Queueable, SerializesModels;

    public $mailData;
    public $controlInfo = [];
    public function __construct($data)
    {
        $this->mailData = $data;
        $this->controlInfo = $data['controlInfo'];
    }

    public function envelope()
    {
        return new Envelope(
            subject: 'New email received from contactForm on BUZON.STUDIO',
        );
    }

    public function content()
    {
        return new Content(
            view: 'emails/email-user-form-email',
        );
    }

    public function attachments()
    {
        return [];
    }
}
