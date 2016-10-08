.class final Lcom/xueqiu/android/community/UpdateUserInfoActivity$20;
.super Ljava/lang/Object;
.source "UpdateUserInfoActivity.java"

# interfaces
.implements Lcom/d/a/b/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/UpdateUserInfoActivity;
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xueqiu/android/community/UpdateUserInfoActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/UpdateUserInfoActivity;I)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$20;->b:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    iput p2, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$20;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final display(Landroid/graphics/Bitmap;Lcom/d/a/b/e/a;Lcom/d/a/b/a/g;)V
    .locals 2

    .prologue
    .line 376
    iget v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$20;->a:I

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ad;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 377
    iget-object v1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$20;->b:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->g(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 378
    return-void
.end method
