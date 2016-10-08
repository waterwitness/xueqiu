.class final Lcom/xueqiu/android/community/TopicDetailActivity$3;
.super Ljava/lang/Object;
.source "TopicDetailActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/TopicDetailActivity;->j()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/TopicDetailActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/TopicDetailActivity;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/xueqiu/android/community/TopicDetailActivity$3;->a:Lcom/xueqiu/android/community/TopicDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 143
    .line 145
    if-nez p2, :cond_2

    .line 146
    iget-object v1, p0, Lcom/xueqiu/android/community/TopicDetailActivity$3;->a:Lcom/xueqiu/android/community/TopicDetailActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/TopicDetailActivity;->a(Lcom/xueqiu/android/community/TopicDetailActivity;)Lcom/xueqiu/android/community/widget/PullToZoomListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/community/widget/PullToZoomListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 147
    if-eqz v2, :cond_3

    .line 148
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 149
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 151
    :goto_0
    if-nez v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/xueqiu/android/community/TopicDetailActivity$3;->a:Lcom/xueqiu/android/community/TopicDetailActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/TopicDetailActivity;->e(Lcom/xueqiu/android/community/TopicDetailActivity;)Lcom/xueqiu/android/community/widget/TransparentHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/widget/TransparentHeader;->b()V

    .line 156
    :goto_1
    iget-object v1, p0, Lcom/xueqiu/android/community/TopicDetailActivity$3;->a:Lcom/xueqiu/android/community/TopicDetailActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/TopicDetailActivity;->e(Lcom/xueqiu/android/community/TopicDetailActivity;)Lcom/xueqiu/android/community/widget/TransparentHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/widget/TransparentHeader;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 157
    iget-object v1, p0, Lcom/xueqiu/android/community/TopicDetailActivity$3;->a:Lcom/xueqiu/android/community/TopicDetailActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/TopicDetailActivity;->e(Lcom/xueqiu/android/community/TopicDetailActivity;)Lcom/xueqiu/android/community/widget/TransparentHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/widget/TransparentHeader;->getHeight()I

    move-result v1

    sub-int v0, v1, v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/xueqiu/android/community/TopicDetailActivity$3;->a:Lcom/xueqiu/android/community/TopicDetailActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/TopicDetailActivity;->e(Lcom/xueqiu/android/community/TopicDetailActivity;)Lcom/xueqiu/android/community/widget/TransparentHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/widget/TransparentHeader;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 158
    iget-object v1, p0, Lcom/xueqiu/android/community/TopicDetailActivity$3;->a:Lcom/xueqiu/android/community/TopicDetailActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/TopicDetailActivity;->e(Lcom/xueqiu/android/community/TopicDetailActivity;)Lcom/xueqiu/android/community/widget/TransparentHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/widget/TransparentHeader;->getHeaderTitle()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 165
    :goto_2
    return-void

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/community/TopicDetailActivity$3;->a:Lcom/xueqiu/android/community/TopicDetailActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/TopicDetailActivity;->e(Lcom/xueqiu/android/community/TopicDetailActivity;)Lcom/xueqiu/android/community/widget/TransparentHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/widget/TransparentHeader;->a()V

    goto :goto_1

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicDetailActivity$3;->a:Lcom/xueqiu/android/community/TopicDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/TopicDetailActivity;->e(Lcom/xueqiu/android/community/TopicDetailActivity;)Lcom/xueqiu/android/community/widget/TransparentHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/widget/TransparentHeader;->getHeaderTitle()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicDetailActivity$3;->a:Lcom/xueqiu/android/community/TopicDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/TopicDetailActivity;->e(Lcom/xueqiu/android/community/TopicDetailActivity;)Lcom/xueqiu/android/community/widget/TransparentHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/widget/TransparentHeader;->getHeaderTitle()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    .prologue
    .line 129
    packed-switch p2, :pswitch_data_0

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 132
    :pswitch_0
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicDetailActivity$3;->a:Lcom/xueqiu/android/community/TopicDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/TopicDetailActivity;->d(Lcom/xueqiu/android/community/TopicDetailActivity;)Lcom/xueqiu/android/base/c;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/d/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/d/c;->d()V

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
