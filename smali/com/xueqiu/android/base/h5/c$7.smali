.class final Lcom/xueqiu/android/base/h5/c$7;
.super Ljava/lang/Object;
.source "H5Fragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/base/h5/c;
.end annotation


# instance fields
.field final synthetic a:Lcom/google/gson/JsonObject;

.field final synthetic b:Lcom/xueqiu/android/base/h5/b;

.field final synthetic c:Lcom/xueqiu/android/base/h5/c;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/h5/c;Lcom/google/gson/JsonObject;Lcom/xueqiu/android/base/h5/b;)V
    .locals 0

    .prologue
    .line 503
    iput-object p1, p0, Lcom/xueqiu/android/base/h5/c$7;->c:Lcom/xueqiu/android/base/h5/c;

    iput-object p2, p0, Lcom/xueqiu/android/base/h5/c$7;->a:Lcom/google/gson/JsonObject;

    iput-object p3, p0, Lcom/xueqiu/android/base/h5/c$7;->b:Lcom/xueqiu/android/base/h5/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 508
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/xueqiu/android/base/h5/c;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 509
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 510
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 513
    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/xueqiu/android/base/h5/c;->a:Ljava/lang/String;

    const-string v2, "temp.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    if-nez p2, :cond_2

    .line 516
    iget-object v1, p0, Lcom/xueqiu/android/base/h5/c$7;->c:Lcom/xueqiu/android/base/h5/c;

    .line 1080
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1081
    const-string v3, "output"

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1082
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "image/*"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 516
    const/16 v0, 0x2711

    invoke-virtual {v1, v2, v0}, Lcom/xueqiu/android/base/h5/c;->a(Landroid/content/Intent;I)V

    .line 526
    :cond_1
    :goto_0
    return-void

    .line 517
    :cond_2
    if-ne p2, v3, :cond_3

    .line 519
    iget-object v1, p0, Lcom/xueqiu/android/base/h5/c$7;->c:Lcom/xueqiu/android/base/h5/c;

    iget-object v2, p0, Lcom/xueqiu/android/base/h5/c$7;->a:Lcom/google/gson/JsonObject;

    invoke-static {v1, v2, v0}, Lcom/xueqiu/android/base/h5/c;->a(Lcom/xueqiu/android/base/h5/c;Lcom/google/gson/JsonObject;Ljava/io/File;)Z

    move-result v1

    .line 520
    if-nez v1, :cond_1

    .line 521
    iget-object v1, p0, Lcom/xueqiu/android/base/h5/c$7;->c:Lcom/xueqiu/android/base/h5/c;

    .line 1093
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1094
    const-string v3, "output"

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 521
    const/16 v0, 0x2712

    invoke-virtual {v1, v2, v0}, Lcom/xueqiu/android/base/h5/c;->a(Landroid/content/Intent;I)V

    goto :goto_0

    .line 524
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c$7;->c:Lcom/xueqiu/android/base/h5/c;

    iget-object v1, p0, Lcom/xueqiu/android/base/h5/c$7;->b:Lcom/xueqiu/android/base/h5/b;

    invoke-static {v0, v1, v3}, Lcom/xueqiu/android/base/h5/c;->a(Lcom/xueqiu/android/base/h5/c;Lcom/xueqiu/android/base/h5/b;I)V

    goto :goto_0
.end method
