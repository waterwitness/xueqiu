.class final Lcom/tencent/open/u;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field public a:Lcom/tencent/tauth/IUiListener;

.field public b:Landroid/os/Bundle;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/open/u;->d:Ljava/lang/ref/WeakReference;

    .line 92
    iput-object p2, p0, Lcom/tencent/open/u;->c:Ljava/lang/String;

    .line 93
    iput-object p3, p0, Lcom/tencent/open/u;->b:Landroid/os/Bundle;

    .line 94
    iput-object p4, p0, Lcom/tencent/open/u;->a:Lcom/tencent/tauth/IUiListener;

    .line 95
    return-void
.end method
