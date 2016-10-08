.class final Lcom/xueqiu/android/community/UserProfileActivity$25;
.super Ljava/lang/Object;
.source "UserProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/UserProfileActivity;->a(Landroid/view/ViewGroup;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lcom/xueqiu/android/community/UserProfileActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/UserProfileActivity;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 937
    iput-object p1, p0, Lcom/xueqiu/android/community/UserProfileActivity$25;->b:Lcom/xueqiu/android/community/UserProfileActivity;

    iput-object p2, p0, Lcom/xueqiu/android/community/UserProfileActivity$25;->a:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 940
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 965
    :goto_0
    return-void

    :cond_0
    move v0, v1

    .line 944
    :goto_1
    iget-object v2, p0, Lcom/xueqiu/android/community/UserProfileActivity$25;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 945
    iget-object v2, p0, Lcom/xueqiu/android/community/UserProfileActivity$25;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setSelected(Z)V

    .line 944
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 947
    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 949
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity$25;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 950
    iget-object v2, p0, Lcom/xueqiu/android/community/UserProfileActivity$25;->b:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-static {v2, v0}, Lcom/xueqiu/android/community/UserProfileActivity;->b(Lcom/xueqiu/android/community/UserProfileActivity;I)I

    .line 951
    if-nez v0, :cond_2

    .line 952
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity$25;->b:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserProfileActivity;->u(Lcom/xueqiu/android/community/UserProfileActivity;)Lcom/xueqiu/android/base/c;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/d/e;

    sget v2, Lcom/xueqiu/android/community/d/e;->a:I

    .line 1059
    iput v2, v0, Lcom/xueqiu/android/community/d/e;->g:I

    .line 959
    :goto_2
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity$25;->b:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserProfileActivity;->x(Lcom/xueqiu/android/community/UserProfileActivity;)Lcom/xueqiu/android/base/c;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/d/e;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/d/e;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 960
    iget-object v1, p0, Lcom/xueqiu/android/community/UserProfileActivity$25;->b:Lcom/xueqiu/android/community/UserProfileActivity;

    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity$25;->b:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserProfileActivity;->y(Lcom/xueqiu/android/community/UserProfileActivity;)Lcom/xueqiu/android/base/c;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/d/e;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/d/e;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/community/UserProfileActivity;->c(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 953
    :cond_2
    if-ne v0, v3, :cond_3

    .line 954
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity$25;->b:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserProfileActivity;->v(Lcom/xueqiu/android/community/UserProfileActivity;)Lcom/xueqiu/android/base/c;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/d/e;

    sget v2, Lcom/xueqiu/android/community/d/e;->b:I

    .line 2059
    iput v2, v0, Lcom/xueqiu/android/community/d/e;->g:I

    goto :goto_2

    .line 956
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity$25;->b:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserProfileActivity;->w(Lcom/xueqiu/android/community/UserProfileActivity;)Lcom/xueqiu/android/base/c;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/d/e;

    sget v2, Lcom/xueqiu/android/community/d/e;->c:I

    .line 3059
    iput v2, v0, Lcom/xueqiu/android/community/d/e;->g:I

    goto :goto_2

    .line 962
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity$25;->b:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserProfileActivity;->z(Lcom/xueqiu/android/community/UserProfileActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 963
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity$25;->b:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserProfileActivity;->A(Lcom/xueqiu/android/community/UserProfileActivity;)Lcom/xueqiu/android/base/c;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/d/e;

    .line 3198
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/d/e;->a(I)Lrx/a;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/community/d/e$6;

    invoke-direct {v2, v0}, Lcom/xueqiu/android/community/d/e$6;-><init>(Lcom/xueqiu/android/community/d/e;)V

    invoke-virtual {v1, v2}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    goto/16 :goto_0
.end method
