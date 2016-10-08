.class public final Lrx/a/d/a;
.super Ljava/lang/Object;
.source "AndroidSchedulers.java"


# static fields
.field private static final a:Lrx/g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    new-instance v0, Lrx/a/d/b;

    new-instance v1, Landroid/os/Handler;

    .line 29
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lrx/a/d/b;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lrx/a/d/a;->a:Lrx/g;

    .line 28
    return-void
.end method

.method public static a()Lrx/g;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lrx/a/d/a;->a:Lrx/g;

    return-object v0
.end method
