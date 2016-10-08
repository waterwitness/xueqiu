.class final Lcom/xueqiu/android/community/UserProfileActivity$12;
.super Ljava/lang/Object;
.source "UserProfileActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/UserProfileActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/UserProfileActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/UserProfileActivity;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/xueqiu/android/community/UserProfileActivity$12;->a:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 8

    .prologue
    const v3, 0x7f0e0010

    const v2, 0x7f0e000b

    const v7, 0x7f0e0118

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 177
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity$12;->a:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserProfileActivity;->b(Lcom/xueqiu/android/community/UserProfileActivity;)F

    move-result v0

    .line 178
    iget-object v1, p0, Lcom/xueqiu/android/community/UserProfileActivity$12;->a:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/UserProfileActivity;->c(Lcom/xueqiu/android/community/UserProfileActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xueqiu/android/community/UserProfileActivity$12;->a:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/UserProfileActivity;->d(Lcom/xueqiu/android/community/UserProfileActivity;)Lcom/xueqiu/android/community/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->isBlocking()Z

    move-result v1

    if-nez v1, :cond_0

    .line 179
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity$12;->a:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/community/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity$12;->a:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserProfileActivity;->d(Lcom/xueqiu/android/community/UserProfileActivity;)Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->isFollowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity$12;->a:Lcom/xueqiu/android/community/UserProfileActivity;

    const v1, 0x7f0e01b3

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 193
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity$12;->a:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserProfileActivity;->e(Lcom/xueqiu/android/community/UserProfileActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 194
    if-nez v0, :cond_3

    .line 216
    :goto_1
    return-void

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity$12;->a:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/community/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity$12;->a:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/community/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity$12;->a:Lcom/xueqiu/android/community/UserProfileActivity;

    const v1, 0x7f0e01b3

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity$12;->a:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/community/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 198
    :cond_3
    iget-object v1, p0, Lcom/xueqiu/android/community/UserProfileActivity$12;->a:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/UserProfileActivity;->e(Lcom/xueqiu/android/community/UserProfileActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    .line 199
    add-int/lit8 v2, v1, -0x2

    if-le v0, v2, :cond_4

    .line 200
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity$12;->a:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-virtual {v0, v7}, Lcom/xueqiu/android/community/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity$12;->a:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserProfileActivity;->f(Lcom/xueqiu/android/community/UserProfileActivity;)V

    goto :goto_1

    .line 204
    :cond_4
    iget-object v2, p0, Lcom/xueqiu/android/community/UserProfileActivity$12;->a:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-static {v2}, Lcom/xueqiu/android/community/UserProfileActivity;->e(Lcom/xueqiu/android/community/UserProfileActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 205
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v3, v4

    .line 207
    add-int/lit8 v1, v1, -0x2

    if-ne v0, v1, :cond_5

    int-to-float v0, v3

    iget-object v1, p0, Lcom/xueqiu/android/community/UserProfileActivity$12;->a:Lcom/xueqiu/android/community/UserProfileActivity;

    const/high16 v3, 0x42400000    # 48.0f

    invoke-static {v1, v3}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    .line 208
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity$12;->a:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/UserProfileActivity;->a(Lcom/xueqiu/android/community/UserProfileActivity;I)I

    .line 209
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity$12;->a:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-virtual {v0, v7}, Lcom/xueqiu/android/community/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity$12;->a:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserProfileActivity;->f(Lcom/xueqiu/android/community/UserProfileActivity;)V

    goto/16 :goto_1

    .line 212
    :cond_5
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity$12;->a:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-virtual {v0, v7}, Lcom/xueqiu/android/community/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity$12;->a:Lcom/xueqiu/android/community/UserProfileActivity;

    iget-object v1, p0, Lcom/xueqiu/android/community/UserProfileActivity$12;->a:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/UserProfileActivity;->g(Lcom/xueqiu/android/community/UserProfileActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/UserProfileActivity;->a(Landroid/view/ViewGroup;)V

    goto/16 :goto_1
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 173
    return-void
.end method
