.class final Lcom/xueqiu/android/community/r;
.super Ljava/lang/Object;
.source "UpdateUserInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/xueqiu/android/community/p;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/community/p;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1000
    iput-object p1, p0, Lcom/xueqiu/android/community/r;->b:Lcom/xueqiu/android/community/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1001
    iput-object p2, p0, Lcom/xueqiu/android/community/r;->a:Ljava/lang/String;

    .line 1002
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/xueqiu/android/community/r;->b:Lcom/xueqiu/android/community/p;

    iget-object v0, v0, Lcom/xueqiu/android/community/p;->c:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    iget-object v1, p0, Lcom/xueqiu/android/community/r;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->j(Lcom/xueqiu/android/community/UpdateUserInfoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1007
    iget-object v0, p0, Lcom/xueqiu/android/community/r;->b:Lcom/xueqiu/android/community/p;

    iget-object v0, v0, Lcom/xueqiu/android/community/p;->c:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    iget-object v0, v0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->k:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 1008
    return-void
.end method
