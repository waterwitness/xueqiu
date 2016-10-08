.class public Lcom/kwlopen/sdk/activity/ImageShowActivity;
.super Landroid/app/Activity;
.source "ImageShowActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private bmp:Landroid/graphics/Bitmap;

.field private cameraTextView:Landroid/widget/TextView;

.field private handler:Landroid/os/Handler;

.field private imageView:Landroid/widget/ImageView;

.field private image_path:Ljava/lang/String;

.field progressDialog:Landroid/app/ProgressDialog;

.field private uploadTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    new-instance v0, Lcom/kwlopen/sdk/activity/ImageShowActivity$1;

    invoke-direct {v0, p0}, Lcom/kwlopen/sdk/activity/ImageShowActivity$1;-><init>(Lcom/kwlopen/sdk/activity/ImageShowActivity;)V

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/ImageShowActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/kwlopen/sdk/activity/ImageShowActivity;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/kwlopen/sdk/activity/ImageShowActivity;->dismissDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/kwlopen/sdk/activity/ImageShowActivity;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/ImageShowActivity;->bmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$102(Lcom/kwlopen/sdk/activity/ImageShowActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/kwlopen/sdk/activity/ImageShowActivity;->bmp:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/kwlopen/sdk/activity/ImageShowActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/ImageShowActivity;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/kwlopen/sdk/activity/ImageShowActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/ImageShowActivity;->image_path:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/kwlopen/sdk/activity/ImageShowActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/ImageShowActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private decodeImage()V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/kwlopen/sdk/activity/ImageShowActivity;->progressDialog()V

    .line 69
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/kwlopen/sdk/activity/ImageShowActivity$2;

    invoke-direct {v1, p0}, Lcom/kwlopen/sdk/activity/ImageShowActivity$2;-><init>(Lcom/kwlopen/sdk/activity/ImageShowActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 80
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 81
    return-void
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/ImageShowActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kwlopen/sdk/activity/ImageShowActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/ImageShowActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 136
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/ImageShowActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 137
    return-void
.end method

.method private progressDialog()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/ImageShowActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/ImageShowActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 126
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/ImageShowActivity;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "\u8bf7\u7a0d\u540e..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/ImageShowActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/ImageShowActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 130
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "camera_text_view"

    invoke-static {p0, v1}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 88
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 89
    const-class v1, Lcom/kwlopen/sdk/activity/CameraActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 90
    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/ImageShowActivity;->startActivity(Landroid/content/Intent;)V

    .line 91
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/ImageShowActivity;->finish()V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "upload_text_view"

    invoke-static {p0, v1}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 93
    new-instance v0, Lcom/kwlopen/sdk/camera/b;

    invoke-direct {v0}, Lcom/kwlopen/sdk/camera/b;-><init>()V

    .line 94
    iget-object v1, p0, Lcom/kwlopen/sdk/activity/ImageShowActivity;->image_path:Ljava/lang/String;

    .line 1010
    iput-object v1, v0, Lcom/kwlopen/sdk/camera/b;->a:Ljava/lang/String;

    .line 95
    invoke-static {}, Lb/a/a/c;->a()Lb/a/a/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lb/a/a/c;->b(Ljava/lang/Object;)V

    .line 96
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/ImageShowActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/ImageShowActivity;->requestWindowFeature(I)Z

    .line 48
    const-string v0, "kwlopen_show_image_layout"

    invoke-static {p0, v0}, Lcom/b/a/a/f;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/ImageShowActivity;->setContentView(I)V

    .line 49
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/ImageShowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "image_path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/ImageShowActivity;->image_path:Ljava/lang/String;

    .line 51
    const-string v0, "show_imageview"

    invoke-static {p0, v0}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/ImageShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/ImageShowActivity;->imageView:Landroid/widget/ImageView;

    .line 52
    const-string v0, "camera_text_view"

    invoke-static {p0, v0}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/ImageShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/ImageShowActivity;->cameraTextView:Landroid/widget/TextView;

    .line 53
    const-string v0, "upload_text_view"

    invoke-static {p0, v0}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/ImageShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/ImageShowActivity;->uploadTextView:Landroid/widget/TextView;

    .line 55
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/ImageShowActivity;->image_path:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kwlopen/sdk/activity/ImageShowActivity;->image_path:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const-string v0, "\u9009\u62e9\u7684\u7167\u7247\u4e0d\u5b58\u5728\uff0c\u8bf7\u9009\u62e9\u5176\u4ed6\u7167\u7247"

    invoke-static {p0, v0}, Lcom/b/a/a/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/ImageShowActivity;->finish()V

    .line 64
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/ImageShowActivity;->cameraTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/ImageShowActivity;->uploadTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    invoke-direct {p0}, Lcom/kwlopen/sdk/activity/ImageShowActivity;->decodeImage()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 117
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 118
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kwlopen/sdk/activity/ImageShowActivity;->bmp:Landroid/graphics/Bitmap;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/b/a/a/b;->a([Landroid/graphics/Bitmap;)V

    .line 119
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 103
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 104
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 105
    const-class v1, Lcom/kwlopen/sdk/activity/CameraActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 106
    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/ImageShowActivity;->startActivity(Landroid/content/Intent;)V

    .line 107
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/ImageShowActivity;->finish()V

    .line 110
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
