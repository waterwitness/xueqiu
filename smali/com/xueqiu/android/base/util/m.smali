.class public final Lcom/xueqiu/android/base/util/m;
.super Ljava/lang/Object;
.source "Gsons.java"


# static fields
.field private static a:Lcom/google/gson/Gson;

.field private static b:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/xueqiu/android/base/util/m;->a:Lcom/google/gson/Gson;

    .line 83
    new-instance v0, Lcom/xueqiu/android/base/util/m$3;

    invoke-direct {v0}, Lcom/xueqiu/android/base/util/m$3;-><init>()V

    sput-object v0, Lcom/xueqiu/android/base/util/m;->b:Lcom/google/gson/TypeAdapter;

    .line 111
    new-instance v0, Lcom/xueqiu/android/base/util/m$4;

    invoke-direct {v0}, Lcom/xueqiu/android/base/util/m$4;-><init>()V

    sput-object v0, Lcom/xueqiu/android/base/util/m;->c:Lcom/google/gson/TypeAdapter;

    .line 140
    new-instance v0, Lcom/xueqiu/android/base/util/m$5;

    invoke-direct {v0}, Lcom/xueqiu/android/base/util/m$5;-><init>()V

    sput-object v0, Lcom/xueqiu/android/base/util/m;->d:Lcom/google/gson/TypeAdapter;

    .line 165
    new-instance v0, Lcom/xueqiu/android/base/util/m$6;

    invoke-direct {v0}, Lcom/xueqiu/android/base/util/m$6;-><init>()V

    sput-object v0, Lcom/xueqiu/android/base/util/m;->e:Lcom/google/gson/TypeAdapter;

    return-void
.end method

.method public static a()Lcom/google/gson/Gson;
    .locals 3

    .prologue
    .line 45
    sget-object v0, Lcom/xueqiu/android/base/util/m;->a:Lcom/google/gson/Gson;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 47
    sget-object v1, Lcom/google/gson/FieldNamingPolicy;->LOWER_CASE_WITH_UNDERSCORES:Lcom/google/gson/FieldNamingPolicy;

    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->setFieldNamingPolicy(Lcom/google/gson/FieldNamingPolicy;)Lcom/google/gson/GsonBuilder;

    .line 48
    const-class v1, Lcom/xueqiu/android/community/model/User;

    new-instance v2, Lcom/xueqiu/android/base/util/m$1;

    invoke-direct {v2}, Lcom/xueqiu/android/base/util/m$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 62
    const-class v1, Ljava/util/Date;

    sget-object v2, Lcom/xueqiu/android/base/util/m;->b:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 63
    const-class v1, Ljava/util/Calendar;

    sget-object v2, Lcom/xueqiu/android/base/util/m;->c:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 64
    const-class v1, Ljava/util/GregorianCalendar;

    sget-object v2, Lcom/xueqiu/android/base/util/m;->c:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 66
    const-class v1, Lcom/xueqiu/android/stock/model/StockStatus;

    new-instance v2, Lcom/xueqiu/android/base/util/m$2;

    invoke-direct {v2}, Lcom/xueqiu/android/base/util/m$2;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 73
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/xueqiu/android/base/util/m;->d:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 74
    const-class v1, Ljava/lang/Double;

    sget-object v2, Lcom/xueqiu/android/base/util/m;->d:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 75
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/xueqiu/android/base/util/m;->e:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 76
    const-class v1, Ljava/lang/Integer;

    sget-object v2, Lcom/xueqiu/android/base/util/m;->e:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 78
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->excludeFieldsWithoutExposeAnnotation()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lcom/xueqiu/android/base/util/m;->a:Lcom/google/gson/Gson;

    .line 80
    :cond_0
    sget-object v0, Lcom/xueqiu/android/base/util/m;->a:Lcom/google/gson/Gson;

    return-object v0
.end method
