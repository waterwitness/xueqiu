.class final Lcom/xueqiu/android/community/a/aq$2;
.super Ljava/lang/Object;
.source "TopicDetailAdapter.java"

# interfaces
.implements Lcom/d/a/b/f/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/a/aq;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/a/aq;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/aq;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/xueqiu/android/community/a/aq$2;->a:Lcom/xueqiu/android/community/a/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 183
    return-void
.end method

.method public final a(Lcom/d/a/b/a/b;)V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/xueqiu/android/community/a/aq$2;->a:Lcom/xueqiu/android/community/a/aq;

    iget-object v0, v0, Lcom/xueqiu/android/community/a/aq;->h:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/xueqiu/android/community/a/aq$2;->a:Lcom/xueqiu/android/community/a/aq;

    iget-object v0, v0, Lcom/xueqiu/android/community/a/aq;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 178
    :cond_0
    return-void
.end method
