.class final Lrx/a/b/b$1;
.super Landroid/content/BroadcastReceiver;
.source "OnSubscribeBroadcastRegister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/a/b/b;
.end annotation


# instance fields
.field final synthetic a:Lrx/i;

.field final synthetic b:Lrx/a/b/b;


# direct methods
.method constructor <init>(Lrx/a/b/b;Lrx/i;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lrx/a/b/b$1;->b:Lrx/a/b/b;

    iput-object p2, p0, Lrx/a/b/b$1;->a:Lrx/i;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lrx/a/b/b$1;->a:Lrx/i;

    invoke-virtual {v0, p2}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 48
    return-void
.end method
