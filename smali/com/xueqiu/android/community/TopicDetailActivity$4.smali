.class final Lcom/xueqiu/android/community/TopicDetailActivity$4;
.super Ljava/lang/Object;
.source "TopicDetailActivity.java"

# interfaces
.implements Lcom/d/a/b/f/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/TopicDetailActivity;->a(Lcom/xueqiu/android/community/model/TopicInfo;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/TopicDetailActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/TopicDetailActivity;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/xueqiu/android/community/TopicDetailActivity$4;->a:Lcom/xueqiu/android/community/TopicDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 197
    return-void
.end method

.method public final a(Lcom/d/a/b/a/b;)V
    .locals 0

    .prologue
    .line 187
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 183
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicDetailActivity$4;->a:Lcom/xueqiu/android/community/TopicDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/TopicDetailActivity;->e(Lcom/xueqiu/android/community/TopicDetailActivity;)Lcom/xueqiu/android/community/widget/TransparentHeader;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/xueqiu/android/community/widget/TransparentHeader;->setHeaderBackground(Landroid/graphics/Bitmap;)V

    .line 192
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicDetailActivity$4;->a:Lcom/xueqiu/android/community/TopicDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/TopicDetailActivity;->a(Lcom/xueqiu/android/community/TopicDetailActivity;)Lcom/xueqiu/android/community/widget/PullToZoomListView;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/xueqiu/android/community/widget/PullToZoomListView;->a(Landroid/graphics/Bitmap;)Landroid/widget/ImageView;

    .line 193
    return-void
.end method
