.class final Lcom/xueqiu/android/tactic/TacticDetailActivity$8;
.super Ljava/lang/Object;
.source "TacticDetailActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/tactic/TacticDetailActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/tactic/TacticDetailActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/tactic/TacticDetailActivity;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$8;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 210
    .line 212
    if-nez p2, :cond_3

    .line 213
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$8;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/tactic/TacticDetailActivity;->f(Lcom/xueqiu/android/tactic/TacticDetailActivity;)Lcom/xueqiu/android/community/widget/PullToZoomListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/widget/PullToZoomListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 214
    if-eqz v0, :cond_7

    .line 215
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 217
    :goto_0
    iget-object v2, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$8;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-static {v2}, Lcom/xueqiu/android/tactic/TacticDetailActivity;->g(Lcom/xueqiu/android/tactic/TacticDetailActivity;)Lcom/xueqiu/android/community/widget/TransparentHeader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/community/widget/TransparentHeader;->getHeight()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 218
    iget-object v2, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$8;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-static {v2}, Lcom/xueqiu/android/tactic/TacticDetailActivity;->g(Lcom/xueqiu/android/tactic/TacticDetailActivity;)Lcom/xueqiu/android/community/widget/TransparentHeader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/community/widget/TransparentHeader;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v2, v2

    iget-object v3, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$8;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-static {v3}, Lcom/xueqiu/android/tactic/TacticDetailActivity;->g(Lcom/xueqiu/android/tactic/TacticDetailActivity;)Lcom/xueqiu/android/community/widget/TransparentHeader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/community/widget/TransparentHeader;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 219
    iget-object v3, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$8;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-static {v3}, Lcom/xueqiu/android/tactic/TacticDetailActivity;->g(Lcom/xueqiu/android/tactic/TacticDetailActivity;)Lcom/xueqiu/android/community/widget/TransparentHeader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/community/widget/TransparentHeader;->getHeaderTitle()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    .line 220
    iget-object v2, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$8;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-static {v2}, Lcom/xueqiu/android/tactic/TacticDetailActivity;->g(Lcom/xueqiu/android/tactic/TacticDetailActivity;)Lcom/xueqiu/android/community/widget/TransparentHeader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/community/widget/TransparentHeader;->a()V

    .line 225
    :goto_1
    iget-object v2, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$8;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-static {v2}, Lcom/xueqiu/android/tactic/TacticDetailActivity;->h(Lcom/xueqiu/android/tactic/TacticDetailActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 233
    :goto_2
    if-ne p2, v7, :cond_0

    .line 234
    iget-object v2, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$8;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-static {v2}, Lcom/xueqiu/android/tactic/TacticDetailActivity;->f(Lcom/xueqiu/android/tactic/TacticDetailActivity;)Lcom/xueqiu/android/community/widget/PullToZoomListView;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/xueqiu/android/community/widget/PullToZoomListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 235
    if-eqz v2, :cond_6

    .line 236
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 237
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 240
    :goto_3
    const-string v3, "host header position"

    const-string v4, "top:%d; bottom: %d; Nav:%d; Host:%d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v7

    const/4 v2, 0x2

    iget-object v6, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$8;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-static {v6}, Lcom/xueqiu/android/tactic/TacticDetailActivity;->g(Lcom/xueqiu/android/tactic/TacticDetailActivity;)Lcom/xueqiu/android/community/widget/TransparentHeader;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xueqiu/android/community/widget/TransparentHeader;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x3

    iget-object v6, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$8;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-static {v6}, Lcom/xueqiu/android/tactic/TacticDetailActivity;->h(Lcom/xueqiu/android/tactic/TacticDetailActivity;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v3, v4, v5}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    iget-object v2, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$8;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-static {v2}, Lcom/xueqiu/android/tactic/TacticDetailActivity;->g(Lcom/xueqiu/android/tactic/TacticDetailActivity;)Lcom/xueqiu/android/community/widget/TransparentHeader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/community/widget/TransparentHeader;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$8;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-static {v3}, Lcom/xueqiu/android/tactic/TacticDetailActivity;->h(Lcom/xueqiu/android/tactic/TacticDetailActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    if-gt v0, v2, :cond_4

    .line 242
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$8;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/tactic/TacticDetailActivity;->h(Lcom/xueqiu/android/tactic/TacticDetailActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 248
    :cond_0
    :goto_4
    if-le p2, v7, :cond_1

    .line 249
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$8;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/tactic/TacticDetailActivity;->h(Lcom/xueqiu/android/tactic/TacticDetailActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 252
    :cond_1
    add-int v0, p2, p3

    if-ne v0, p4, :cond_5

    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$8;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/tactic/TacticDetailActivity;->d(Lcom/xueqiu/android/tactic/TacticDetailActivity;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 253
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$8;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/tactic/TacticDetailActivity;->i(Lcom/xueqiu/android/tactic/TacticDetailActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 257
    :goto_5
    return-void

    .line 222
    :cond_2
    iget-object v2, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$8;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-static {v2}, Lcom/xueqiu/android/tactic/TacticDetailActivity;->g(Lcom/xueqiu/android/tactic/TacticDetailActivity;)Lcom/xueqiu/android/community/widget/TransparentHeader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/community/widget/TransparentHeader;->getHeaderTitle()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 223
    iget-object v2, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$8;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-static {v2}, Lcom/xueqiu/android/tactic/TacticDetailActivity;->g(Lcom/xueqiu/android/tactic/TacticDetailActivity;)Lcom/xueqiu/android/community/widget/TransparentHeader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/community/widget/TransparentHeader;->b()V

    goto/16 :goto_1

    .line 228
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$8;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/tactic/TacticDetailActivity;->g(Lcom/xueqiu/android/tactic/TacticDetailActivity;)Lcom/xueqiu/android/community/widget/TransparentHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/widget/TransparentHeader;->getHeaderTitle()Landroid/view/View;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 229
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$8;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/tactic/TacticDetailActivity;->g(Lcom/xueqiu/android/tactic/TacticDetailActivity;)Lcom/xueqiu/android/community/widget/TransparentHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/widget/TransparentHeader;->a()V

    move v0, v1

    goto/16 :goto_2

    .line 244
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$8;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/tactic/TacticDetailActivity;->h(Lcom/xueqiu/android/tactic/TacticDetailActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 255
    :cond_5
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$8;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/tactic/TacticDetailActivity;->i(Lcom/xueqiu/android/tactic/TacticDetailActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_6
    move v2, v0

    move v0, v1

    goto/16 :goto_3

    :cond_7
    move v0, v1

    goto/16 :goto_0
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4

    .prologue
    .line 195
    packed-switch p2, :pswitch_data_0

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 199
    :pswitch_0
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$8;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/tactic/TacticDetailActivity;->d(Lcom/xueqiu/android/tactic/TacticDetailActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$8;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    iget-object v1, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$8;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-static {v1}, Lcom/xueqiu/android/tactic/TacticDetailActivity;->e(Lcom/xueqiu/android/tactic/TacticDetailActivity;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/xueqiu/android/tactic/TacticDetailActivity;->a(Lcom/xueqiu/android/tactic/TacticDetailActivity;J)V

    goto :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
