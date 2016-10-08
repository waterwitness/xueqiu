.class public final enum Lu/aly/at;
.super Ljava/lang/Enum;
.source "Event.java"

# interfaces
.implements Lu/aly/fg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lu/aly/at;",
        ">;",
        "Lu/aly/fg;"
    }
.end annotation


# static fields
.field public static final enum a:Lu/aly/at;

.field public static final enum b:Lu/aly/at;

.field public static final enum c:Lu/aly/at;

.field public static final enum d:Lu/aly/at;

.field public static final enum e:Lu/aly/at;

.field private static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lu/aly/at;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic i:[Lu/aly/at;


# instance fields
.field private final g:S

.field private final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 55
    new-instance v0, Lu/aly/at;

    const-string v1, "NAME"

    const-string v2, "name"

    invoke-direct {v0, v1, v8, v4, v2}, Lu/aly/at;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/at;->a:Lu/aly/at;

    .line 56
    new-instance v0, Lu/aly/at;

    const-string v1, "PROPERTIES"

    const-string v2, "properties"

    invoke-direct {v0, v1, v4, v5, v2}, Lu/aly/at;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/at;->b:Lu/aly/at;

    .line 57
    new-instance v0, Lu/aly/at;

    const-string v1, "DURATION"

    const-string v2, "duration"

    invoke-direct {v0, v1, v5, v6, v2}, Lu/aly/at;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/at;->c:Lu/aly/at;

    .line 58
    new-instance v0, Lu/aly/at;

    const-string v1, "ACC"

    const-string v2, "acc"

    invoke-direct {v0, v1, v6, v7, v2}, Lu/aly/at;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/at;->d:Lu/aly/at;

    .line 59
    new-instance v0, Lu/aly/at;

    const-string v1, "TS"

    const/4 v2, 0x5

    const-string v3, "ts"

    invoke-direct {v0, v1, v7, v2, v3}, Lu/aly/at;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/at;->e:Lu/aly/at;

    const/4 v0, 0x5

    new-array v0, v0, [Lu/aly/at;

    sget-object v1, Lu/aly/at;->a:Lu/aly/at;

    aput-object v1, v0, v8

    sget-object v1, Lu/aly/at;->b:Lu/aly/at;

    aput-object v1, v0, v4

    sget-object v1, Lu/aly/at;->c:Lu/aly/at;

    aput-object v1, v0, v5

    sget-object v1, Lu/aly/at;->d:Lu/aly/at;

    aput-object v1, v0, v6

    sget-object v1, Lu/aly/at;->e:Lu/aly/at;

    aput-object v1, v0, v7

    sput-object v0, Lu/aly/at;->i:[Lu/aly/at;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/at;->f:Ljava/util/Map;

    .line 64
    const-class v0, Lu/aly/at;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    return-void

    .line 64
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/at;

    .line 65
    sget-object v2, Lu/aly/at;->f:Ljava/util/Map;

    .line 1119
    iget-object v3, v0, Lu/aly/at;->h:Ljava/lang/String;

    .line 65
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 110
    iput-short p3, p0, Lu/aly/at;->g:S

    .line 111
    iput-object p4, p0, Lu/aly/at;->h:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lu/aly/at;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lu/aly/at;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lu/aly/at;

    return-object v0
.end method

.method public static values()[Lu/aly/at;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lu/aly/at;->i:[Lu/aly/at;

    array-length v1, v0

    new-array v2, v1, [Lu/aly/at;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final a()S
    .locals 1

    .prologue
    .line 115
    iget-short v0, p0, Lu/aly/at;->g:S

    return v0
.end method
