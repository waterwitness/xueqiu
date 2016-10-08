.class final Lcom/xueqiu/android/community/a/ak$32;
.super Lcom/xueqiu/android/base/util/o;
.source "StatusListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/a/ak;->a(Landroid/view/View;Lcom/xueqiu/android/community/model/Status;)V
.end annotation


# instance fields
.field final synthetic b:Lcom/xueqiu/android/community/model/Status;

.field final synthetic c:Lcom/xueqiu/android/community/a/ak;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/ak;Lcom/xueqiu/android/community/model/Status;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/xueqiu/android/community/a/ak$32;->c:Lcom/xueqiu/android/community/a/ak;

    iput-object p2, p0, Lcom/xueqiu/android/community/a/ak$32;->b:Lcom/xueqiu/android/community/model/Status;

    invoke-direct {p0}, Lcom/xueqiu/android/base/util/o;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$32;->b:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getGender()Lcom/xueqiu/android/community/model/User$Gender;

    move-result-object v0

    sget-object v1, Lcom/xueqiu/android/community/model/User$Gender;->FEMALE:Lcom/xueqiu/android/community/model/User$Gender;

    if-ne v0, v1, :cond_0

    .line 405
    check-cast p2, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$32;->c:Lcom/xueqiu/android/community/a/ak;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/ak;->b(Lcom/xueqiu/android/community/a/ak;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 409
    :goto_0
    return-void

    .line 407
    :cond_0
    check-cast p2, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$32;->c:Lcom/xueqiu/android/community/a/ak;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/ak;->c(Lcom/xueqiu/android/community/a/ak;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
