.class final Lcom/xueqiu/android/community/UpdateUserInfoActivity$10;
.super Ljava/lang/Object;
.source "UpdateUserInfoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/UpdateUserInfoActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)V
    .locals 0

    .prologue
    .line 718
    iput-object p1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$10;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 722
    if-nez p2, :cond_1

    .line 723
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 724
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 725
    iget-object v1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$10;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-virtual {v1, v0, v3}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 732
    :cond_0
    :goto_0
    return-void

    .line 726
    :cond_1
    if-ne p2, v3, :cond_0

    .line 727
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 728
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$10;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-static {v2}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->t(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Ljava/io/File;

    move-result-object v2

    const-string v3, "snowball_temp.jpeg"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 729
    const-string v2, "output"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 730
    iget-object v1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$10;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
