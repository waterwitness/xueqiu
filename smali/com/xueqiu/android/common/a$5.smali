.class final Lcom/xueqiu/android/common/a$5;
.super Ljava/lang/Object;
.source "AboutUsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/a;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/a;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/xueqiu/android/common/a$5;->a:Lcom/xueqiu/android/common/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/common/a$5;->a:Lcom/xueqiu/android/common/a;

    invoke-static {v0}, Lcom/xueqiu/android/common/a;->a(Lcom/xueqiu/android/common/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
