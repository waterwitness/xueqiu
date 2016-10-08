.class final Lcom/xueqiu/android/base/h5/l$14;
.super Ljava/lang/Object;
.source "JSBridge.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/base/h5/l;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/h5/l;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/h5/l;)V
    .locals 0

    .prologue
    .line 469
    iput-object p1, p0, Lcom/xueqiu/android/base/h5/l$14;->a:Lcom/xueqiu/android/base/h5/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 472
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 473
    return-void
.end method
