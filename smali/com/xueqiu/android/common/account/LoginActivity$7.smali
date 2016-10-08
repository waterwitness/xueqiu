.class final Lcom/xueqiu/android/common/account/LoginActivity$7;
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
    .line 451
    iput-object p1, p0, Lcom/xueqiu/android/common/account/LoginActivity$7;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$7;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->n(Lcom/xueqiu/android/common/account/LoginActivity;)Lcom/xueqiu/android/common/account/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/account/c;->d()V

    .line 456
    return-void
.end method
