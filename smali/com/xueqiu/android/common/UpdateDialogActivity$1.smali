.class final Lcom/xueqiu/android/common/UpdateDialogActivity$1;
.super Ljava/lang/Object;
.source "UpdateDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/UpdateDialogActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xueqiu/android/common/UpdateDialogActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/UpdateDialogActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/xueqiu/android/common/UpdateDialogActivity$1;->b:Lcom/xueqiu/android/common/UpdateDialogActivity;

    iput-object p2, p0, Lcom/xueqiu/android/common/UpdateDialogActivity$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/xueqiu/android/common/UpdateDialogActivity$1;->b:Lcom/xueqiu/android/common/UpdateDialogActivity;

    iget-object v1, p0, Lcom/xueqiu/android/common/UpdateDialogActivity$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/UpdateDialogActivity;->a(Lcom/xueqiu/android/common/UpdateDialogActivity;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/xueqiu/android/common/UpdateDialogActivity$1;->b:Lcom/xueqiu/android/common/UpdateDialogActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/UpdateDialogActivity;->finish()V

    .line 67
    return-void
.end method
