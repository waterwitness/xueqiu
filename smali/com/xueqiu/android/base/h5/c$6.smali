.class final Lcom/xueqiu/android/base/h5/c$6;
.super Ljava/lang/Object;
.source "H5Fragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/base/h5/c;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/h5/b;

.field final synthetic b:Lcom/xueqiu/android/base/h5/c;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/h5/c;Lcom/xueqiu/android/base/h5/b;)V
    .locals 0

    .prologue
    .line 528
    iput-object p1, p0, Lcom/xueqiu/android/base/h5/c$6;->b:Lcom/xueqiu/android/base/h5/c;

    iput-object p2, p0, Lcom/xueqiu/android/base/h5/c$6;->a:Lcom/xueqiu/android/base/h5/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    .line 531
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c$6;->b:Lcom/xueqiu/android/base/h5/c;

    iget-object v1, p0, Lcom/xueqiu/android/base/h5/c$6;->a:Lcom/xueqiu/android/base/h5/b;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/h5/c;->a(Lcom/xueqiu/android/base/h5/c;Lcom/xueqiu/android/base/h5/b;I)V

    .line 532
    return-void
.end method
