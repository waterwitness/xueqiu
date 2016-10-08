.class final Lcom/xueqiu/android/community/UpdateUserInfoActivity$1;
.super Ljava/lang/Object;
.source "UpdateUserInfoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/UpdateUserInfoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$1;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 171
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$1;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->a(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$1;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->a(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 1329
    iput-boolean v1, v0, Lcom/android/volley/n;->h:Z

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$1;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->b(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$1;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->b(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 2329
    iput-boolean v1, v0, Lcom/android/volley/n;->h:Z

    .line 177
    :cond_1
    return-void
.end method
