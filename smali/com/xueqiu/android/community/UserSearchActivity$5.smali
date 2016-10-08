.class final Lcom/xueqiu/android/community/UserSearchActivity$5;
.super Ljava/lang/Object;
.source "UserSearchActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/UserSearchActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/UserSearchActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/UserSearchActivity;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/xueqiu/android/community/UserSearchActivity$5;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 156
    if-lez p3, :cond_1

    add-int v0, p2, p3

    if-ne v0, p4, :cond_1

    if-lez p2, :cond_1

    .line 157
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$5;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserSearchActivity;->a(Lcom/xueqiu/android/community/UserSearchActivity;)I

    move-result v0

    if-nez v0, :cond_2

    .line 158
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$5;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserSearchActivity;->b(Lcom/xueqiu/android/community/UserSearchActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$5;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    iget-object v1, p0, Lcom/xueqiu/android/community/UserSearchActivity$5;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/UserSearchActivity;->b(Lcom/xueqiu/android/community/UserSearchActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v2}, Lcom/xueqiu/android/community/UserSearchActivity;->a(Lcom/xueqiu/android/community/UserSearchActivity;Ljava/lang/String;ZZ)V

    .line 166
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$5;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserSearchActivity;->a(Lcom/xueqiu/android/community/UserSearchActivity;)I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$5;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserSearchActivity;->b(Lcom/xueqiu/android/community/UserSearchActivity;)Ljava/lang/String;

    move-result-object v0

    .line 1197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 166
    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$5;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0, v3}, Lcom/xueqiu/android/community/UserSearchActivity;->a(Lcom/xueqiu/android/community/UserSearchActivity;Z)V

    .line 170
    :cond_1
    return-void

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$5;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserSearchActivity;->a(Lcom/xueqiu/android/community/UserSearchActivity;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 162
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$5;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserSearchActivity;->b(Lcom/xueqiu/android/community/UserSearchActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$5;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    iget-object v1, p0, Lcom/xueqiu/android/community/UserSearchActivity$5;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/UserSearchActivity;->b(Lcom/xueqiu/android/community/UserSearchActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3, v3}, Lcom/xueqiu/android/community/UserSearchActivity;->a(Lcom/xueqiu/android/community/UserSearchActivity;Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 152
    return-void
.end method
