.class public final Lrx/h/o;
.super Lrx/g;
.source "NewThreadScheduler.java"


# static fields
.field private static final a:Lrx/d/c/g;

.field private static final b:Lrx/h/o;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lrx/d/c/g;

    const-string v1, "RxNewThreadScheduler-"

    invoke-direct {v0, v1}, Lrx/d/c/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lrx/h/o;->a:Lrx/d/c/g;

    .line 29
    new-instance v0, Lrx/h/o;

    invoke-direct {v0}, Lrx/h/o;-><init>()V

    sput-object v0, Lrx/h/o;->b:Lrx/h/o;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lrx/g;-><init>()V

    .line 37
    return-void
.end method

.method static b()Lrx/h/o;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lrx/h/o;->b:Lrx/h/o;

    return-object v0
.end method


# virtual methods
.method public final a()Lrx/h;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lrx/d/b/a;

    sget-object v1, Lrx/h/o;->a:Lrx/d/c/g;

    invoke-direct {v0, v1}, Lrx/d/b/a;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method
