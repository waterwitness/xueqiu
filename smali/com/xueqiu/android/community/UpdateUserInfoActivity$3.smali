.class final Lcom/xueqiu/android/community/UpdateUserInfoActivity$3;
.super Ljava/lang/Object;
.source "UpdateUserInfoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 574
    iput-object p1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$3;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 577
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$3;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    iget-object v1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$3;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->p(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->c(Lcom/xueqiu/android/community/UpdateUserInfoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 578
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$3;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    iget-object v1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$3;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->q(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->d(Lcom/xueqiu/android/community/UpdateUserInfoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 579
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$3;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    iget-object v1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$3;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->j(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$3;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-static {v2}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->k(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->a(Lcom/xueqiu/android/community/UpdateUserInfoActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    return-void
.end method
