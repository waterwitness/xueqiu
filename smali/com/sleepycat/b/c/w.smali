.class public enum Lcom/sleepycat/b/c/w;
.super Ljava/lang/Enum;
.source "DbType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sleepycat/b/c/w;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sleepycat/b/c/w;

.field public static final enum b:Lcom/sleepycat/b/c/w;

.field public static final enum c:Lcom/sleepycat/b/c/w;

.field public static final enum d:Lcom/sleepycat/b/c/w;

.field public static final enum e:Lcom/sleepycat/b/c/w;

.field public static final enum f:Lcom/sleepycat/b/c/w;

.field public static final enum g:Lcom/sleepycat/b/c/w;

.field private static final synthetic i:[Lcom/sleepycat/b/c/w;


# instance fields
.field private final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x3

    .line 22
    new-instance v0, Lcom/sleepycat/b/c/w$1;

    const-string v1, "ID"

    const-string v2, "_jeIdMap"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/c/w$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/w;->a:Lcom/sleepycat/b/c/w;

    .line 41
    new-instance v0, Lcom/sleepycat/b/c/w$2;

    const-string v1, "NAME"

    const-string v2, "_jeNameMap"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/c/w$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/w;->b:Lcom/sleepycat/b/c/w;

    .line 60
    new-instance v0, Lcom/sleepycat/b/c/w$3;

    const-string v1, "UTILIZATION"

    const-string v2, "_jeUtilization"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/c/w$3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/w;->c:Lcom/sleepycat/b/c/w;

    .line 75
    new-instance v0, Lcom/sleepycat/b/c/w;

    const-string v1, "REP_GROUP"

    const-string v2, "_jeRepGroupDB"

    invoke-direct {v0, v1, v3, v2}, Lcom/sleepycat/b/c/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/w;->d:Lcom/sleepycat/b/c/w;

    .line 77
    new-instance v0, Lcom/sleepycat/b/c/w;

    const-string v1, "VLSN_MAP"

    const-string v2, "_jeVlsnMapDb"

    invoke-direct {v0, v1, v4, v2}, Lcom/sleepycat/b/c/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/w;->e:Lcom/sleepycat/b/c/w;

    .line 79
    new-instance v0, Lcom/sleepycat/b/c/w;

    const-string v1, "SYNC"

    const-string v2, "_jeSyncDb"

    invoke-direct {v0, v1, v5, v2}, Lcom/sleepycat/b/c/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/w;->f:Lcom/sleepycat/b/c/w;

    .line 81
    new-instance v0, Lcom/sleepycat/b/c/w;

    const-string v1, "USER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v6, v2}, Lcom/sleepycat/b/c/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/w;->g:Lcom/sleepycat/b/c/w;

    .line 20
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sleepycat/b/c/w;

    const/4 v1, 0x0

    sget-object v2, Lcom/sleepycat/b/c/w;->a:Lcom/sleepycat/b/c/w;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sleepycat/b/c/w;->b:Lcom/sleepycat/b/c/w;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/sleepycat/b/c/w;->c:Lcom/sleepycat/b/c/w;

    aput-object v2, v0, v1

    sget-object v1, Lcom/sleepycat/b/c/w;->d:Lcom/sleepycat/b/c/w;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sleepycat/b/c/w;->e:Lcom/sleepycat/b/c/w;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sleepycat/b/c/w;->f:Lcom/sleepycat/b/c/w;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sleepycat/b/c/w;->g:Lcom/sleepycat/b/c/w;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sleepycat/b/c/w;->i:[Lcom/sleepycat/b/c/w;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 86
    iput-object p3, p0, Lcom/sleepycat/b/c/w;->h:Ljava/lang/String;

    .line 87
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;B)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/b/c/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/b/c/w;
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/sleepycat/b/c/w;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/c/w;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/b/c/w;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/sleepycat/b/c/w;->i:[Lcom/sleepycat/b/c/w;

    invoke-virtual {v0}, [Lcom/sleepycat/b/c/w;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/b/c/w;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/sleepycat/b/c/ad;)Lcom/sleepycat/b/l/y;
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sleepycat/b/l/y;->a(Lcom/sleepycat/b/c/ad;[B)Lcom/sleepycat/b/l/y;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/sleepycat/b/c/ad;[B)Lcom/sleepycat/b/l/y;
    .locals 1

    .prologue
    .line 123
    invoke-static {p1, p2}, Lcom/sleepycat/b/l/y;->a(Lcom/sleepycat/b/c/ad;[B)Lcom/sleepycat/b/l/y;

    move-result-object v0

    return-object v0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sleepycat/b/c/w;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sleepycat/b/c/w;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 103
    invoke-static {}, Lcom/sleepycat/b/aa;->b()Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/c/w;->h:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x1

    return v0
.end method
