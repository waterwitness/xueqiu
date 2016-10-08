.class final Lcom/xueqiu/android/community/UserSearchActivity$1;
.super Ljava/lang/Object;
.source "UserSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 126
    iput-object p1, p0, Lcom/xueqiu/android/community/UserSearchActivity$1;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 129
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$1;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserSearchActivity;->a(Lcom/xueqiu/android/community/UserSearchActivity;)I

    move-result v0

    if-nez v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$1;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    iget-object v1, p0, Lcom/xueqiu/android/community/UserSearchActivity$1;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/UserSearchActivity;->b(Lcom/xueqiu/android/community/UserSearchActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v2}, Lcom/xueqiu/android/community/UserSearchActivity;->a(Lcom/xueqiu/android/community/UserSearchActivity;Ljava/lang/String;ZZ)V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$1;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserSearchActivity;->a(Lcom/xueqiu/android/community/UserSearchActivity;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 132
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$1;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    iget-object v1, p0, Lcom/xueqiu/android/community/UserSearchActivity$1;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/UserSearchActivity;->b(Lcom/xueqiu/android/community/UserSearchActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3, v3}, Lcom/xueqiu/android/community/UserSearchActivity;->a(Lcom/xueqiu/android/community/UserSearchActivity;Ljava/lang/String;ZZ)V

    goto :goto_0
.end method
