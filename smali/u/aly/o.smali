.class public final enum Lu/aly/o;
.super Ljava/lang/Enum;
.source "ActivateMsg.java"

# interfaces
.implements Lu/aly/fg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lu/aly/o;",
        ">;",
        "Lu/aly/fg;"
    }
.end annotation


# static fields
.field public static final enum a:Lu/aly/o;

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lu/aly/o;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic e:[Lu/aly/o;


# instance fields
.field private final c:S

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 47
    new-instance v0, Lu/aly/o;

    const-string v1, "TS"

    const-string v2, "ts"

    invoke-direct {v0, v1, v2}, Lu/aly/o;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lu/aly/o;->a:Lu/aly/o;

    const/4 v0, 0x1

    new-array v0, v0, [Lu/aly/o;

    const/4 v1, 0x0

    sget-object v2, Lu/aly/o;->a:Lu/aly/o;

    aput-object v2, v0, v1

    sput-object v0, Lu/aly/o;->e:[Lu/aly/o;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/o;->b:Ljava/util/Map;

    .line 52
    const-class v0, Lu/aly/o;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    return-void

    .line 52
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/o;

    .line 53
    sget-object v2, Lu/aly/o;->b:Ljava/util/Map;

    .line 1099
    iget-object v3, v0, Lu/aly/o;->d:Ljava/lang/String;

    .line 53
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 90
    const/4 v0, 0x1

    iput-short v0, p0, Lu/aly/o;->c:S

    .line 91
    iput-object p2, p0, Lu/aly/o;->d:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lu/aly/o;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lu/aly/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lu/aly/o;

    return-object v0
.end method

.method public static values()[Lu/aly/o;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lu/aly/o;->e:[Lu/aly/o;

    array-length v1, v0

    new-array v2, v1, [Lu/aly/o;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final a()S
    .locals 1

    .prologue
    .line 95
    iget-short v0, p0, Lu/aly/o;->c:S

    return v0
.end method
