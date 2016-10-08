.class final Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$4$1;
.super Ljava/lang/Object;
.source "VerifyPhoneNumActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$4;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$4;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$4;)V
    .locals 0

    .prologue
    .line 447
    iput-object p1, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$4$1;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$4$1;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$4;

    iget-object v0, v0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$4;->b:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->a(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;Z)V

    .line 451
    return-void
.end method
