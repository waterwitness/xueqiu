.class final Lcom/xueqiu/android/community/a/p$1;
.super Lcom/d/a/b/f/d;
.source "PublicTimelineAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/a/p;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/a/p;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/p;)V
    .locals 0

    .prologue
    .line 797
    iput-object p1, p0, Lcom/xueqiu/android/community/a/p$1;->a:Lcom/xueqiu/android/community/a/p;

    invoke-direct {p0}, Lcom/d/a/b/f/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 800
    invoke-super {p0, p1, p2, p3}, Lcom/d/a/b/f/d;->a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 801
    iget-object v0, p0, Lcom/xueqiu/android/community/a/p$1;->a:Lcom/xueqiu/android/community/a/p;

    iget-object v0, v0, Lcom/xueqiu/android/community/a/p;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 802
    return-void
.end method
