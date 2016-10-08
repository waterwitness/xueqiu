.class final Lcom/xueqiu/android/common/BigImageActivity$1;
.super Landroid/os/AsyncTask;
.source "BigImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/BigImageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/BigImageActivity;

.field private b:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/BigImageActivity;)V
    .locals 1

    .prologue
    .line 45
    iput-object p1, p0, Lcom/xueqiu/android/common/BigImageActivity$1;->a:Lcom/xueqiu/android/common/BigImageActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/common/BigImageActivity$1;->b:Ljava/lang/Exception;

    return-void
.end method

.method private varargs a()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 50
    const/4 v1, 0x0

    .line 52
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/xueqiu/android/common/BigImageActivity$1;->a:Lcom/xueqiu/android/common/BigImageActivity;

    invoke-static {v2}, Lcom/xueqiu/android/common/BigImageActivity;->a(Lcom/xueqiu/android/common/BigImageActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 56
    :goto_0
    return-object v0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    iput-object v0, p0, Lcom/xueqiu/android/common/BigImageActivity$1;->b:Ljava/lang/Exception;

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/xueqiu/android/common/BigImageActivity$1;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 45
    check-cast p1, Landroid/graphics/Bitmap;

    .line 1060
    iget-object v0, p0, Lcom/xueqiu/android/common/BigImageActivity$1;->b:Ljava/lang/Exception;

    if-nez v0, :cond_1

    .line 1061
    if-nez p1, :cond_0

    .line 1062
    iget-object v0, p0, Lcom/xueqiu/android/common/BigImageActivity$1;->a:Lcom/xueqiu/android/common/BigImageActivity;

    const v1, 0x7f0702fa

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/BigImageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 1070
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/common/BigImageActivity$1;->a:Lcom/xueqiu/android/common/BigImageActivity;

    const v1, 0x7f0e0177

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/BigImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    return-void

    .line 1064
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/BigImageActivity$1;->a:Lcom/xueqiu/android/common/BigImageActivity;

    const v1, 0x7f0e0334

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/BigImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1065
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1068
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/common/BigImageActivity$1;->b:Ljava/lang/Exception;

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
