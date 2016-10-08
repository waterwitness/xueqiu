.class final Lcom/xueqiu/android/base/util/aa$2;
.super Ljava/lang/Object;
.source "NotificationsUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/util/aa;->b(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/xueqiu/android/base/util/aa$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 111
    new-instance v0, Lcom/xueqiu/android/base/util/an;

    invoke-direct {v0}, Lcom/xueqiu/android/base/util/an;-><init>()V

    .line 112
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/util/an;->a(I)Lcom/xueqiu/android/base/util/an;

    .line 113
    iget-object v1, p0, Lcom/xueqiu/android/base/util/aa$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/util/an;->a(Ljava/lang/CharSequence;)Lcom/xueqiu/android/base/util/an;

    .line 1063
    sget-object v0, Lcom/xueqiu/android/base/util/an;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 115
    return-void
.end method
