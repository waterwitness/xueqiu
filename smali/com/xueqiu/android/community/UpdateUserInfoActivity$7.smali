.class final Lcom/xueqiu/android/community/UpdateUserInfoActivity$7;
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
    .line 680
    iput-object p1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$7;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 684
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$7;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->a(Lcom/xueqiu/android/community/UpdateUserInfoActivity;Z)V

    .line 685
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$7;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    iget-object v1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$7;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->j(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$7;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-static {v2}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->k(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->a(Lcom/xueqiu/android/community/UpdateUserInfoActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    return-void
.end method
