.class final Lrx/a/b/b$2;
.super Ljava/lang/Object;
.source "OnSubscribeBroadcastRegister.java"

# interfaces
.implements Lrx/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/a/b/b;
.end annotation


# instance fields
.field final synthetic a:Landroid/content/BroadcastReceiver;

.field final synthetic b:Lrx/a/b/b;


# direct methods
.method constructor <init>(Lrx/a/b/b;Landroid/content/BroadcastReceiver;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lrx/a/b/b$2;->b:Lrx/a/b/b;

    iput-object p2, p0, Lrx/a/b/b$2;->a:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lrx/a/b/b$2;->b:Lrx/a/b/b;

    .line 1028
    iget-object v0, v0, Lrx/a/b/b;->a:Landroid/content/Context;

    .line 54
    iget-object v1, p0, Lrx/a/b/b$2;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 55
    return-void
.end method
