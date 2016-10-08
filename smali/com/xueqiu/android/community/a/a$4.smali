.class final Lcom/xueqiu/android/community/a/a$4;
.super Lcom/xueqiu/android/base/util/o;
.source "CommentListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/a/a;
.end annotation


# instance fields
.field final synthetic b:Lcom/xueqiu/android/community/model/User$Gender;

.field final synthetic c:Lcom/xueqiu/android/community/a/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/a;Lcom/xueqiu/android/community/model/User$Gender;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/xueqiu/android/community/a/a$4;->c:Lcom/xueqiu/android/community/a/a;

    iput-object p2, p0, Lcom/xueqiu/android/community/a/a$4;->b:Lcom/xueqiu/android/community/model/User$Gender;

    invoke-direct {p0}, Lcom/xueqiu/android/base/util/o;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/xueqiu/android/community/a/a$4;->b:Lcom/xueqiu/android/community/model/User$Gender;

    sget-object v1, Lcom/xueqiu/android/community/model/User$Gender;->FEMALE:Lcom/xueqiu/android/community/model/User$Gender;

    if-ne v0, v1, :cond_0

    .line 338
    check-cast p2, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/xueqiu/android/community/a/a$4;->c:Lcom/xueqiu/android/community/a/a;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/a;->b(Lcom/xueqiu/android/community/a/a;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 342
    :goto_0
    return-void

    .line 340
    :cond_0
    check-cast p2, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/xueqiu/android/community/a/a$4;->c:Lcom/xueqiu/android/community/a/a;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/a;->c(Lcom/xueqiu/android/community/a/a;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
