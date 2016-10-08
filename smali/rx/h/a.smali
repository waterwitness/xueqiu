.class final Lrx/h/a;
.super Lrx/g;
.source "CachedThreadScheduler.java"


# static fields
.field private static final a:Lrx/d/c/g;

.field private static final b:Lrx/d/c/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lrx/d/c/g;

    const-string v1, "RxCachedThreadScheduler-"

    invoke-direct {v0, v1}, Lrx/d/c/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lrx/h/a;->a:Lrx/d/c/g;

    .line 36
    new-instance v0, Lrx/d/c/g;

    const-string v1, "RxCachedWorkerPoolEvictor-"

    invoke-direct {v0, v1}, Lrx/d/c/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lrx/h/a;->b:Lrx/d/c/g;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lrx/g;-><init>()V

    .line 154
    return-void
.end method

.method static synthetic b()Lrx/d/c/g;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lrx/h/a;->b:Lrx/d/c/g;

    return-object v0
.end method

.method static synthetic c()Lrx/d/c/g;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lrx/h/a;->a:Lrx/d/c/g;

    return-object v0
.end method


# virtual methods
.method public final a()Lrx/h;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Lrx/h/c;

    invoke-static {}, Lrx/h/b;->c()Lrx/h/b;

    move-result-object v1

    invoke-virtual {v1}, Lrx/h/b;->a()Lrx/h/d;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/h/c;-><init>(Lrx/h/d;)V

    return-object v0
.end method
