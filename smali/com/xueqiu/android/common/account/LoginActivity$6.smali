.class final Lcom/xueqiu/android/common/account/LoginActivity$6;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/account/LoginActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/account/LoginActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/LoginActivity;)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Lcom/xueqiu/android/common/account/LoginActivity$6;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$6;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->n(Lcom/xueqiu/android/common/account/LoginActivity;)Lcom/xueqiu/android/common/account/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/account/c;->b()V

    .line 445
    return-void
.end method
