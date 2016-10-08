.class public final Lrx/h/p;
.super Ljava/lang/Object;
.source "Schedulers.java"


# static fields
.field private static final d:Lrx/h/p;


# instance fields
.field private final a:Lrx/g;

.field private final b:Lrx/g;

.field private final c:Lrx/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lrx/h/p;

    invoke-direct {v0}, Lrx/h/p;-><init>()V

    sput-object v0, Lrx/h/p;->d:Lrx/h/p;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Lrx/g/d;->a()Lrx/g/d;

    move-result-object v0

    invoke-virtual {v0}, Lrx/g/d;->c()Lrx/g/e;

    invoke-static {}, Lrx/g/e;->a()Lrx/g;

    .line 39
    new-instance v0, Lrx/h/e;

    invoke-direct {v0}, Lrx/h/e;-><init>()V

    iput-object v0, p0, Lrx/h/p;->a:Lrx/g;

    .line 42
    invoke-static {}, Lrx/g/d;->a()Lrx/g/d;

    move-result-object v0

    invoke-virtual {v0}, Lrx/g/d;->c()Lrx/g/e;

    invoke-static {}, Lrx/g/e;->b()Lrx/g;

    .line 46
    new-instance v0, Lrx/h/a;

    invoke-direct {v0}, Lrx/h/a;-><init>()V

    iput-object v0, p0, Lrx/h/p;->b:Lrx/g;

    .line 49
    invoke-static {}, Lrx/g/d;->a()Lrx/g/d;

    move-result-object v0

    invoke-virtual {v0}, Lrx/g/d;->c()Lrx/g/e;

    invoke-static {}, Lrx/g/e;->c()Lrx/g;

    .line 53
    invoke-static {}, Lrx/h/o;->b()Lrx/h/o;

    move-result-object v0

    iput-object v0, p0, Lrx/h/p;->c:Lrx/g;

    .line 55
    return-void
.end method

.method public static a()Lrx/g;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lrx/h/p;->d:Lrx/h/p;

    iget-object v0, v0, Lrx/h/p;->c:Lrx/g;

    return-object v0
.end method

.method public static a(Ljava/util/concurrent/Executor;)Lrx/g;
    .locals 1

    .prologue
    .line 137
    new-instance v0, Lrx/h/i;

    invoke-direct {v0, p0}, Lrx/h/i;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static b()Lrx/g;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lrx/h/p;->d:Lrx/h/p;

    iget-object v0, v0, Lrx/h/p;->a:Lrx/g;

    return-object v0
.end method

.method public static c()Lrx/g;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lrx/h/p;->d:Lrx/h/p;

    iget-object v0, v0, Lrx/h/p;->b:Lrx/g;

    return-object v0
.end method
