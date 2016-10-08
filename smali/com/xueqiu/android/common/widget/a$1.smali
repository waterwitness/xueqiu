.class final Lcom/xueqiu/android/common/widget/a$1;
.super Ljava/lang/Object;
.source "AddLinkDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/widget/a;-><init>(Landroid/content/Context;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/widget/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/widget/a;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/a$1;->a:Lcom/xueqiu/android/common/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/a$1;->a:Lcom/xueqiu/android/common/widget/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/a;->dismiss()V

    .line 49
    return-void
.end method
