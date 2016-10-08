.class final Lcom/xueqiu/android/community/WriteStatusActivity$15;
.super Ljava/lang/Object;
.source "WriteStatusActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/WriteStatusActivity;->k()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/WriteStatusActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/WriteStatusActivity;)V
    .locals 0

    .prologue
    .line 875
    iput-object p1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$15;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 884
    const-string v0, "WriteStatusActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onScroll firstVisibleItem = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " visibleItemCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " totalItemCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    if-lez p3, :cond_1

    add-int v0, p2, p3

    if-ne v0, p4, :cond_1

    if-lez p2, :cond_1

    .line 887
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$15;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->C(Lcom/xueqiu/android/community/WriteStatusActivity;)I

    move-result v0

    if-nez v0, :cond_2

    .line 888
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$15;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->D(Lcom/xueqiu/android/community/WriteStatusActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 889
    const-string v0, "WriteStatusActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onScroll mKeyword = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity$15;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v2}, Lcom/xueqiu/android/community/WriteStatusActivity;->D(Lcom/xueqiu/android/community/WriteStatusActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$15;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$15;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->D(Lcom/xueqiu/android/community/WriteStatusActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v2}, Lcom/xueqiu/android/community/WriteStatusActivity;->a(Lcom/xueqiu/android/community/WriteStatusActivity;Ljava/lang/String;ZZ)V

    .line 899
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$15;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->C(Lcom/xueqiu/android/community/WriteStatusActivity;)I

    move-result v0

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$15;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->D(Lcom/xueqiu/android/community/WriteStatusActivity;)Ljava/lang/String;

    move-result-object v0

    .line 1197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 899
    if-eqz v0, :cond_1

    .line 900
    const-string v0, "WriteStatusActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onScroll mKeyword = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity$15;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v2}, Lcom/xueqiu/android/community/WriteStatusActivity;->D(Lcom/xueqiu/android/community/WriteStatusActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$15;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0, v3}, Lcom/xueqiu/android/community/WriteStatusActivity;->c(Lcom/xueqiu/android/community/WriteStatusActivity;Z)V

    .line 904
    :cond_1
    return-void

    .line 892
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$15;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->C(Lcom/xueqiu/android/community/WriteStatusActivity;)I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 893
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$15;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->D(Lcom/xueqiu/android/community/WriteStatusActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 894
    const-string v0, "WriteStatusActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onScroll mKeyword = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity$15;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v2}, Lcom/xueqiu/android/community/WriteStatusActivity;->D(Lcom/xueqiu/android/community/WriteStatusActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$15;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$15;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->D(Lcom/xueqiu/android/community/WriteStatusActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3, v3}, Lcom/xueqiu/android/community/WriteStatusActivity;->a(Lcom/xueqiu/android/community/WriteStatusActivity;Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3

    .prologue
    .line 878
    const-string v0, "WriteStatusActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onScrollStateChanged scrollState = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    return-void
.end method
