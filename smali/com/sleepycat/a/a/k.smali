.class public abstract Lcom/sleepycat/a/a/k;
.super Lcom/sleepycat/a/a/j;
.source "TupleBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sleepycat/a/a/j",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final primitives:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Lcom/sleepycat/a/a/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sleepycat/a/a/k;->primitives:Ljava/util/Map;

    .line 40
    const-class v0, Ljava/lang/String;

    const-class v1, Ljava/lang/String;

    new-instance v2, Lcom/sleepycat/a/a/i;

    invoke-direct {v2}, Lcom/sleepycat/a/a/i;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/sleepycat/a/a/k;->addPrimitive(Ljava/lang/Class;Ljava/lang/Class;Lcom/sleepycat/a/a/k;)V

    .line 41
    const-class v0, Ljava/lang/Character;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    new-instance v2, Lcom/sleepycat/a/a/c;

    invoke-direct {v2}, Lcom/sleepycat/a/a/c;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/sleepycat/a/a/k;->addPrimitive(Ljava/lang/Class;Ljava/lang/Class;Lcom/sleepycat/a/a/k;)V

    .line 42
    const-class v0, Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v2, Lcom/sleepycat/a/a/a;

    invoke-direct {v2}, Lcom/sleepycat/a/a/a;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/sleepycat/a/a/k;->addPrimitive(Ljava/lang/Class;Ljava/lang/Class;Lcom/sleepycat/a/a/k;)V

    .line 43
    const-class v0, Ljava/lang/Byte;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    new-instance v2, Lcom/sleepycat/a/a/b;

    invoke-direct {v2}, Lcom/sleepycat/a/a/b;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/sleepycat/a/a/k;->addPrimitive(Ljava/lang/Class;Ljava/lang/Class;Lcom/sleepycat/a/a/k;)V

    .line 44
    const-class v0, Ljava/lang/Short;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    new-instance v2, Lcom/sleepycat/a/a/h;

    invoke-direct {v2}, Lcom/sleepycat/a/a/h;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/sleepycat/a/a/k;->addPrimitive(Ljava/lang/Class;Ljava/lang/Class;Lcom/sleepycat/a/a/k;)V

    .line 45
    const-class v0, Ljava/lang/Integer;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v2, Lcom/sleepycat/a/a/f;

    invoke-direct {v2}, Lcom/sleepycat/a/a/f;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/sleepycat/a/a/k;->addPrimitive(Ljava/lang/Class;Ljava/lang/Class;Lcom/sleepycat/a/a/k;)V

    .line 46
    const-class v0, Ljava/lang/Long;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-instance v2, Lcom/sleepycat/a/a/g;

    invoke-direct {v2}, Lcom/sleepycat/a/a/g;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/sleepycat/a/a/k;->addPrimitive(Ljava/lang/Class;Ljava/lang/Class;Lcom/sleepycat/a/a/k;)V

    .line 47
    const-class v0, Ljava/lang/Float;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-instance v2, Lcom/sleepycat/a/a/e;

    invoke-direct {v2}, Lcom/sleepycat/a/a/e;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/sleepycat/a/a/k;->addPrimitive(Ljava/lang/Class;Ljava/lang/Class;Lcom/sleepycat/a/a/k;)V

    .line 48
    const-class v0, Ljava/lang/Double;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-instance v2, Lcom/sleepycat/a/a/d;

    invoke-direct {v2}, Lcom/sleepycat/a/a/d;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/sleepycat/a/a/k;->addPrimitive(Ljava/lang/Class;Ljava/lang/Class;Lcom/sleepycat/a/a/k;)V

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/sleepycat/a/a/j;-><init>()V

    .line 61
    return-void
.end method

.method private static addPrimitive(Ljava/lang/Class;Ljava/lang/Class;Lcom/sleepycat/a/a/k;)V
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/sleepycat/a/a/k;->primitives:Ljava/util/Map;

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/sleepycat/a/a/k;->primitives:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-void
.end method

.method public static getPrimitiveBinding(Ljava/lang/Class;)Lcom/sleepycat/a/a/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/sleepycat/a/a/k",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 123
    sget-object v0, Lcom/sleepycat/a/a/k;->primitives:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/a/a/k;

    return-object v0
.end method


# virtual methods
.method public abstract entryToObject(Lcom/sleepycat/a/a/l;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/a/a/l;",
            ")TE;"
        }
    .end annotation
.end method

.method public entryToObject(Lcom/sleepycat/b/m;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/m;",
            ")TE;"
        }
    .end annotation

    .prologue
    .line 66
    invoke-static {p1}, Lcom/sleepycat/a/a/k;->entryToInput(Lcom/sleepycat/b/m;)Lcom/sleepycat/a/a/l;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/a/a/k;->entryToObject(Lcom/sleepycat/a/a/l;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract objectToEntry(Ljava/lang/Object;Lcom/sleepycat/a/a/m;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/sleepycat/a/a/m;",
            ")V"
        }
    .end annotation
.end method

.method public objectToEntry(Ljava/lang/Object;Lcom/sleepycat/b/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/sleepycat/b/m;",
            ")V"
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/sleepycat/a/a/k;->getTupleOutput(Ljava/lang/Object;)Lcom/sleepycat/a/a/m;

    move-result-object v0

    .line 73
    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/a/a/k;->objectToEntry(Ljava/lang/Object;Lcom/sleepycat/a/a/m;)V

    .line 74
    invoke-static {v0, p2}, Lcom/sleepycat/a/a/k;->outputToEntry(Lcom/sleepycat/a/a/m;Lcom/sleepycat/b/m;)V

    .line 75
    return-void
.end method
