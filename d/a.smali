.class public abstract Ld/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ld/b;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    const-string v1, "kotlin.reflect.jvm.internal.ReflectionFactoryImpl"

    .line 4
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Ld/b;
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_d} :catch_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_d} :catch_e
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_d} :catch_e
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_d} :catch_e

    .line 14
    move-object v0, v1

    .line 15
    :catch_e
    if-eqz v0, :cond_11

    .line 17
    goto :goto_16

    .line 18
    :cond_11
    new-instance v0, Ld/b;

    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 23
    :goto_16
    sput-object v0, Ld/a;->a:Ld/b;

    .line 25
    return-void
.end method
