<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Mail\Mailables\Content;
use Illuminate\Mail\Mailables\Envelope;
use Illuminate\Queue\SerializesModels;

class EmailThanksForContact extends Mailable
{
    use Queueable, SerializesModels;

    public $mailData;
    public function __construct($data)
    {
        $this->mailData = $data;
    }

    public function envelope()
    {
        return new Envelope(
            subject: 'Dziękujemy za kontakt!',
        );
    }

    public function content()
    {
        return new Content(
            view: 'emails/email-template-user-confirm',
        );
    }

    public function attachments()
    {
        return [];
    }
}
