.class public final enum Lcom/sleepycat/b/c/e;
.super Ljava/lang/Enum;
.source "CursorImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sleepycat/b/c/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sleepycat/b/c/e;

.field public static final enum b:Lcom/sleepycat/b/c/e;

.field public static final enum c:Lcom/sleepycat/b/c/e;

.field public static final enum d:Lcom/sleepycat/b/c/e;

.field private static final synthetic h:[Lcom/sleepycat/b/c/e;


# instance fields
.field public final e:Z

.field public final f:Z

.field private final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 109
    new-instance v0, Lcom/sleepycat/b/c/e;

    const-string v1, "SET"

    const-string v5, "SET"

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/c/e;-><init>(Ljava/lang/String;IZZLjava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/e;->a:Lcom/sleepycat/b/c/e;

    .line 110
    new-instance v4, Lcom/sleepycat/b/c/e;

    const-string v5, "BOTH"

    const-string v9, "BOTH"

    move v6, v3

    move v7, v3

    move v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/sleepycat/b/c/e;-><init>(Ljava/lang/String;IZZLjava/lang/String;)V

    sput-object v4, Lcom/sleepycat/b/c/e;->b:Lcom/sleepycat/b/c/e;

    .line 111
    new-instance v4, Lcom/sleepycat/b/c/e;

    const-string v5, "SET_RANGE"

    const-string v9, "SET_RANGE"

    move v6, v10

    move v7, v2

    move v8, v2

    invoke-direct/range {v4 .. v9}, Lcom/sleepycat/b/c/e;-><init>(Ljava/lang/String;IZZLjava/lang/String;)V

    sput-object v4, Lcom/sleepycat/b/c/e;->c:Lcom/sleepycat/b/c/e;

    .line 112
    new-instance v4, Lcom/sleepycat/b/c/e;

    const-string v5, "BOTH_RANGE"

    const-string v9, "BOTH_RANGE"

    move v6, v11

    move v7, v2

    move v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/sleepycat/b/c/e;-><init>(Ljava/lang/String;IZZLjava/lang/String;)V

    sput-object v4, Lcom/sleepycat/b/c/e;->d:Lcom/sleepycat/b/c/e;

    .line 108
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sleepycat/b/c/e;

    sget-object v1, Lcom/sleepycat/b/c/e;->a:Lcom/sleepycat/b/c/e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sleepycat/b/c/e;->b:Lcom/sleepycat/b/c/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sleepycat/b/c/e;->c:Lcom/sleepycat/b/c/e;

    aput-object v1, v0, v10

    sget-object v1, Lcom/sleepycat/b/c/e;->d:Lcom/sleepycat/b/c/e;

    aput-object v1, v0, v11

    sput-object v0, Lcom/sleepycat/b/c/e;->h:[Lcom/sleepycat/b/c/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 121
    iput-boolean p3, p0, Lcom/sleepycat/b/c/e;->e:Z

    .line 122
    iput-boolean p4, p0, Lcom/sleepycat/b/c/e;->f:Z

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SearchMode."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/c/e;->g:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/b/c/e;
    .locals 1

    .prologue
    .line 108
    const-class v0, Lcom/sleepycat/b/c/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/c/e;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/b/c/e;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/sleepycat/b/c/e;->h:[Lcom/sleepycat/b/c/e;

    invoke-virtual {v0}, [Lcom/sleepycat/b/c/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/b/c/e;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sleepycat/b/c/e;->g:Ljava/lang/String;

    return-object v0
.end method
