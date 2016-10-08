.class final Lcom/xueqiu/android/community/UpdateUserInfoActivity$23;
.super Ljava/lang/Object;
.source "UpdateUserInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/UpdateUserInfoActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)V
    .locals 0

    .prologue
    .line 559
    iput-object p1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$23;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 563
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$23;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->n(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)V

    .line 564
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$23;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->o(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)V

    .line 565
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$23;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    iget-object v1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$23;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->p(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$23;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-static {v2}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->q(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->a(Lcom/xueqiu/android/community/UpdateUserInfoActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    return-void
.end method
