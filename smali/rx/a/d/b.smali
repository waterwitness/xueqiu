.class public final Lrx/a/d/b;
.super Lrx/g;
.source "HandlerThreadScheduler.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Lrx/g;-><init>()V

    .line 40
    iput-object p1, p0, Lrx/a/d/b;->a:Landroid/os/Handler;

    .line 41
    return-void
.end method


# virtual methods
.method public final a()Lrx/h;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lrx/a/d/c;

    iget-object v1, p0, Lrx/a/d/b;->a:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lrx/a/d/c;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method
