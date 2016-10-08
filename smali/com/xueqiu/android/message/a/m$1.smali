.class final Lcom/xueqiu/android/message/a/m$1;
.super Lcom/d/a/b/f/d;
.source "GroupMemberAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/a/m;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/a/o;

.field final synthetic b:I

.field final synthetic c:Lcom/xueqiu/android/message/a/m;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/a/m;Lcom/xueqiu/android/message/a/o;I)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/xueqiu/android/message/a/m$1;->c:Lcom/xueqiu/android/message/a/m;

    iput-object p2, p0, Lcom/xueqiu/android/message/a/m$1;->a:Lcom/xueqiu/android/message/a/o;

    iput p3, p0, Lcom/xueqiu/android/message/a/m$1;->b:I

    invoke-direct {p0}, Lcom/d/a/b/f/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/xueqiu/android/message/a/m$1;->a:Lcom/xueqiu/android/message/a/o;

    iget-object v0, v0, Lcom/xueqiu/android/message/a/o;->b:Landroid/widget/ImageView;

    iget v1, p0, Lcom/xueqiu/android/message/a/m$1;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/xueqiu/android/message/a/m$1;->a:Lcom/xueqiu/android/message/a/o;

    iget-object v0, v0, Lcom/xueqiu/android/message/a/o;->b:Landroid/widget/ImageView;

    iget v1, p0, Lcom/xueqiu/android/message/a/m$1;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 89
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 98
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/message/a/m$1;->a:Lcom/xueqiu/android/message/a/o;

    iget-object v0, v0, Lcom/xueqiu/android/message/a/o;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/message/a/m$1;->a:Lcom/xueqiu/android/message/a/o;

    iget-object v0, v0, Lcom/xueqiu/android/message/a/o;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/xueqiu/android/message/a/m$1;->a:Lcom/xueqiu/android/message/a/o;

    iget-object v0, v0, Lcom/xueqiu/android/message/a/o;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 101
    :cond_0
    return-void
.end method
